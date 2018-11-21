require 'goodreads'
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
    data = retrieve_information_from_google_api(params[:query])
    @book = UsersBook.new
    authorize @book
    @book.save

    if @book.save
      update_the_book_with_google_infos(@book, data)
      redirect_to users_book_path(@book)
    else
      render :new
    end
  end

  def search_for_a_book
    @book = UsersBook.new
    authorize @book
  end

  private

  def retrieve_information_from_google_api(search)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{search}"
    serialized = open(url).read
    JSON.parse(serialized)
  end

  def update_the_book_with_google_infos(book, data)
    book.update(
      title: data["items"][0]["volumeInfo"]["title"],
      author: data["items"][0]["volumeInfo"]["authors"][0],
      description: data["items"][0]["volumeInfo"]["description"],
      num_pages: data["items"][0]["volumeInfo"]["pageCount"],
      isbn: data["items"][0]["volumeInfo"]["industryIdentifiers"][0]["identifier"]
    )
  end

  def users_book_params
    params.require(:user_books).permit(:title, :author, :isbn, :details, :reading_time, :num_pages, :description, :image_url)
  end
end
