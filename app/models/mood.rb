class Mood < ApplicationRecord
  has_many :book_moods
  has_many :users_books, through: :book_moods
end
