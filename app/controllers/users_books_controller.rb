require 'goodreads'
require 'open-uri'

class UsersBooksController < ApplicationController
  def index
    # @users_books = policy_scope(Users_book)
  end

  def show
    @user_book = UsersBook.find(params[:id])
    authorize @user_book
  end

  def new
    @user_book = UsersBook.new
    authorize @user_book
    # raise
  end

  # def create
  #   client = Goodreads.new(
  #     api_key: ENV['GOODREADS_API_KEY'],
  #     api_secret: ENV['GOODREADS_API_SECRET']
  #   )
  #   # first request
      # search = search_books(params[:query])
  #   title = search.results.work.best_book[:title]
  #   author = search.results.work.first.best_book.author.name
  #   image = search.results.work.first.best_book.image_url

  #   # second request to get specific detail
  #   book_detail = client.book_by_title(title)
  #   num_pages = book_detail.num_pages
  #   description = book_detail.description

  #   @book = UsersBook.new
  #   authorize @book

  #   @book = UsersBook.create!(
  #     title: title,
  #     author: author,
  #     num_pages: num_pages,
  #     description: description,
  #     image_url: image
  #   )
  #   redirect_to users_book_path(@book)
  # end

  def create
    data = retrieve_information_from_google_api(params[:query])
    # raise
    @book = UsersBook.new
    authorize @book
    @book.save

    if @book.save
      update_the_book_with_google_infos(@book, data)
      redirect_to users_book_path(@book)
    else
      render :new
    end
    # raise
    # 3 cas de figure : titre / auteur / isbn
  end

  private

  def retrieve_information_from_google_api(search)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{search}"
    serialized = open(url).read
    JSON.parse(serialized)
  end

  def update_the_book_with_google_infos(book, data)
    book.update({
        title: data["items"][0]["volumeInfo"]["title"],
        author: data["items"][0]["volumeInfo"]["authors"][0],
        description: data["items"][0]["volumeInfo"]["description"],
        num_pages: data["items"][0]["volumeInfo"]["pageCount"]
      })
  end

  def users_book_params
    params.require(:user_books).permit(:title, :author, :isbn, :details, :reading_time, :num_pages, :description, :image_url)
  end
end
