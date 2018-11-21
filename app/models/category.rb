class Category < ApplicationRecord
  has_many :book_categories
  has_many :users_books, through: :book_categories

  CATEGORIES_LIST = ["fiction", "adventure", "romance", "thriller", "young adult", "tragedy"]
end
