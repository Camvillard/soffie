class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    unless current_user.nil?
    @users_books = UsersBook.where(user_id: current_user.id)
    @books_in_progress = @users_books.where(status: "Reading in progress")
    @moods = Mood.all
    end
  end

  def search_results
    # raise
    PgSearch::Multisearch.rebuild(UsersBook)
    PgSearch::Multisearch.rebuild(Mood)
    @results = PgSearch.multisearch(params[:query])
#
  end

  def about
  end

  def contact
  end

  def styles
  end

  def book_confirmation
    @user_book = UsersBook.find(params[:id])
  end

  def speed_test
  end

  def updating_users_reading_time
    user = current_user
    user.reading_speed = params[:words_per_minute]
    user.save
    redirect_to root_path # TODO: redirect somewhere else
  end
end
#
