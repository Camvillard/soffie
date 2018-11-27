class MoodsController < ApplicationController
  def index
    @moods = policy_scope(Mood)
  end

  def new
    @mood = Mood.new
    authorize @mood
  end

  def create
    @mood = Mood.new(set_mood_params)
    authorize @mood
    if @mood.save
      params[:books].each do |book_id|
        @mood.users_books << UsersBook.find(book_id)
        # BookMood.new(mood: @mood, users_book: UsersBook.find(book_id))
        # raise
      end
      redirect_to moods_path
    end
  end

  private

  def set_mood_params
    params.require(:mood).permit(:name, :description)
  end
end
