require 'open-uri'

class UsersBooksController < ApplicationController

  def results
    @categories = Category.find(params[:categories])
    @reading_time = calculate_reading_time(params[:day], params[:hours])
    @users_books = policy_scope(UsersBook)
    if params[:day] == "" || params[:hours] == ""
      @time_books = @users_books
    else
      find_a_book_with_time(@reading_time)
    end
    @final_books = []

    @time_books.each do |book|
      @final_books << book if book.is_valid?(@categories)
    end
    if @final_books.empty?
      render :no_results
    end

  end

  def show
    @user_book = UsersBook.find(params[:id])
    authorize @user_book
    @users_book = UsersBook.find(params[:id])
    @review = Review.new
    authorize @users_book
  end

  def new
    @users_book = UsersBook.new
    authorize @users_book
  end

  def create
    built_query = build_api_query(params[:title], params[:author], params[:isbn])
    data = retrieve_information_from_google_api(built_query)["items"][0]["volumeInfo"]
    image = data['imageLinks'].is_a?(Hash) ? data['imageLinks']['thumbnail'] : data['imageLinks'].first['thumbnail']
    @book = UsersBook.new(
      title: data["title"],
      author: data["authors"][0],
      description: data["description"],
      num_pages: data["pageCount"],
      isbn: data["industryIdentifiers"][0]["identifier"],
      image_url: image,
      user: current_user
    )
    authorize @book

    if @book.save
      @categories = params[:categories]
      add_category_to_a_book(@book, @categories)
      redirect_to book_confirmation_path(@book)
    else
      render :new
    end
  end

  def search_for_a_book
    @book = UsersBook.new
    authorize @book
  end

  def calculate_reading_time(days, hours)
    days.to_f * hours.to_f * 3600
  end

  def update
    @user_book = UsersBook.find(params[:id])
    @user_book.update(strong_params)
    @user_book.define_reading_date
    authorize @user_book
    UserMailer.book_choice(@user_book).deliver_now
    redirect_to root_path
  end

  def update_completed_pages
    users_book_id = params[:users_books].first
    @users_book = UsersBook.find(users_book_id)

    completed_pages = params[:book][:completed_pages]

    @users_book.completed_pages = completed_pages
    @users_book.save

    authorize(@users_book)

    redirect_to root_path
  end

  private

  def add_category_to_a_book(book, categories)
    book_categories = []
    categories.each do |category|
      book_categories << Category.find(category)
    end
    book.categories = book_categories
  end

  def find_a_book_with_time(time)
    @time_books = []
    @users_books.each do |users_book|
      if users_book.reading_time.to_f > (time - 7200) && users_book.reading_time.to_f < (time + 7200)
        @time_books << users_book
      end
    end
  end

  def build_api_query(title, author, isbn)
    output = ""
    output += title
    output += "+inauthor:#{author}" unless author.empty?
    output += "+isbn:#{isbn}" unless isbn.empty?
    return output
  end

  def retrieve_information_from_google_api(search)
    search_normalized = search.gsub(/\s+/, "%20").unicode_normalize(:nfkd).encode('ASCII', replace: '')
    url = "https://www.googleapis.com/books/v1/volumes?q=#{search_normalized}"
    serialized = open(url).read
    JSON.parse(serialized)
  end

  def strong_params
    params.require(:users_book).permit(:status, :end_readingdate)
  end

end
