class UsersBooksController < ApplicationController
  def index
  end

  def new
    @users_book = UsersBook.new
    # authorize @users_book

  end

  def create
  end
end
