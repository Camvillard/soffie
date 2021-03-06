require 'open-uri'

class UsersBooksController < ApplicationController

  def results
    @moods = Mood.find(params[:moods])
    @reading_time = calculate_reading_time(params[:day], params[:hours])
    @users_books = policy_scope(UsersBook)
    if params[:day] == "" || params[:hours] == ""
      @time_books = @users_books
    else
      find_a_book_with_time(@reading_time)
    end
    @final_books = []

    @time_books.each do |book|
      @final_books << book if book.is_valid?(@moods)
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
    built_query = build_api_query(params[:title], params[:isbn])
    data = retrieve_information_from_google_api(built_query)["items"][0]["volumeInfo"]
    @book = UsersBook.new(
      title: data["title"],
      author: data["authors"][0],
      description: data["description"],
      num_pages: data["pageCount"],
      isbn: data["industryIdentifiers"][0]["identifier"],
      user: current_user
    )
    @book.image_url = retrieve_image_from_goodreads(@book.title)
    authorize @book

    if @book.save
      @categories = params[:categories]
      add_category_to_a_book(@book, @categories)
      redirect_to book_confirmation_path(@book)
    else
      render :new
    end
  end

  def add_mood
    @user_book = UsersBook.find(params[:id])
    authorize @user_book
    params[:moods].each do |mood_id|
      @users_books << UsersBook.find(mood_id)
    end
    if @user_book.save
      redirect_to users_book_path(@user_book)
    else
      flash[:alert] = "oops, something wrong in here"
    end
  end

  def search_for_a_book
    @book = UsersBook.new
    authorize @book
    @moods = Mood.all.order(created_at: :asc)
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

    redirect_to "#{root_path}#book-carousel"
  end

  def destroy
    @user_book = UsersBook.find(params[:id])
    @user_book.destroy

    authorize @user_book
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
      if users_book.reading_time.to_f > (time - 10800) && users_book.reading_time.to_f < (time + 10800)
        @time_books << users_book
      end
    end
  end

  def build_api_query(title, isbn)
    output = ""
    output += title
    output += "+isbn:#{isbn}" unless isbn.empty?
    return output
  end

  def retrieve_image_from_goodreads(book)
    client = Goodreads.new(
          api_key: ENV['GOODREADS_API_KEY'],
          api_secret: ENV['GOODREADS_API_SECRET']
        )
    search = client.search_books(book)
    url = search.results.work.first.best_book.image_url
    index_of_letter = url.index(/(\ds|\dm)/) + 1
    url[index_of_letter] = "l"
    return url
  end

  def retrieve_information_from_google_api(search)
    search_normalized = search.gsub(/\s+/, "%20").unicode_normalize(:nfkd).encode('ASCII', replace: '')
    url = "https://www.googleapis.com/books/v1/volumes?q=#{search_normalized}"
    serialized = open(url).read
    JSON.parse(serialized)
  end

  def strong_params
    params.require(:users_book).permit(:status, :end_readingdate, :delete)
  end

end
