require 'goodreads'

class UsersBooksController < ApplicationController
  def index
  end

  def show
    @book = UsersBook.find(params[:id])
  end

  def new
  end

  def create
    client = Goodreads.new(
      api_key: ENV['GOODREADS_API_KEY'],
      api_secret: ENV['GOODREADS_API_SECRET']
    )

    # first request
    search = client.search_books(params[:query])
    # raise
    title = search.results.work.first.best_book.title
    author = search.results.work.first.best_book.author.name
    image = search.results.work.first.best_book.image_url

    # second request to get specific detail
    book_detail = client.book_by_title(title)
    num_pages = book_detail.num_pages
    description = book_detail.description

    book = UsersBook.create!(
      title: title,
      author: author,
      num_pages: num_pages,
      description: description,
      image_url: image
    )
    redirect_to users_book_path(book)
  end
end
