class BookMood < ApplicationRecord
  belongs_to :mood
  belongs_to :users_book
end
