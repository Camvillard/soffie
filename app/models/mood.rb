class Mood < ApplicationRecord
  has_many :book_moods, dependent: :destroy
  has_many :users_books, through: :book_moods
end
