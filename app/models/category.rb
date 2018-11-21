class Category < ApplicationRecord
  has_many :book_categories
  has_many :users_books, through: :book_categories
end
