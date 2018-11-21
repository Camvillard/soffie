class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def about
  end

  def contact
  end

  def styles
  end

  def speed_test

  end

  def updating_users_reading_time

  end
end
