class MoodsController < ApplicationController
  def index
    @moods = Mood.all
  end
end
