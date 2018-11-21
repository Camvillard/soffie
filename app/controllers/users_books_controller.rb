require 'open-uri'

class UsersBooksController < ApplicationController
  def index
    @users_books = policy_scope(UsersBook)
  end

  def show
    @user_book = UsersBook.find(params[:id])
    authorize @user_book
  end

  def new
    @user_book = UsersBook.new
    authorize @user_book
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
      image_url: image
      )

    authorize @book
    if @book.save
      redirect_to users_book_path(@book)
    else
      render :new
    end
  end

  private

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

  def users_book_params
    params.require(:user_books).permit(:title, :author, :isbn, :details, :reading_time, :num_pages, :description, :image_url)
  end
end
