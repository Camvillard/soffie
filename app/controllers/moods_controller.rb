class MoodsController < ApplicationController
  def index
    @moods = policy_scope(Mood)
  end

  def show
    @mood = Mood.find(params[:id])
    @mood_categories = @mood.retrieve_categories_in_moods
    authorize @mood
  end

  def new
    @mood = Mood.new
    authorize @mood
  end

  def create
    @mood = Mood.new(set_mood_params)
    @mood.user = current_user
    authorize @mood
    if @mood.save
      params[:books].each do |book_id|
        @mood.users_books << UsersBook.find(book_id)
      end
      redirect_to moods_path
    end
  end

  def update
  end

  def add_book
    @mood = Mood.find(params[:id])
    authorize @mood
    params[:books].each do |book_id|
      @mood.users_books << UsersBook.find(book_id)
    end
    if @mood.save
      redirect_to mood_path(@mood)
    else
      flash[:alert] = "oops, something wrong in here"
    end

  end

  private

  def set_mood_params
    params.require(:mood).permit(:name, :description)
  end
end
