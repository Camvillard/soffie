class UsersBooksController < ApplicationController
  def index
    # @users_books = policy_scope(Users_book)
  end

  def new
    @users_book = UsersBook.new
    authorize @users_book
  end

  def create
    raise
    # serge code here
    # authorize @users_book
  end
end
