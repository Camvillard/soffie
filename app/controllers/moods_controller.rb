class MoodsController < ApplicationController
  def index
    @moods = policy_scope(Mood)
  end
end
