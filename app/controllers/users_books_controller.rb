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
    url = "https://www.googleapis.com/books/v1/volumes?q=#{params[:query]}"
    serialized = open(url).read
    data = JSON.parse(serialized)
    if params["query"] != ""
      @book = UsersBook.new(title: data["items"][0]["volumeInfo"]["title"])
    elsif params["query"] != ""
      @book = UsersBook.new(author: data["items"][0]["volumeInfo"]["author"])
    else
      @book = UsersBook.new(title: data["items"][0]["volumeInfo"]["industryIdentifiers"][0]["type"])
    end
    authorize @book
    @book.save
    raise
    # 3 cas de figure : titre / auteur / isbn
  end
end
