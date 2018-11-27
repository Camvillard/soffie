class ReviewsController < ApplicationController

  def create
    @users_book = UsersBook.find(params[:users_book_id])
    @review = Review.new(review_params)
    @review.users_book = @users_book
    authorize @users_book
    if @review.save
      redirect_to users_book_path(@users_book)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
