class BookCategory < ApplicationRecord
  belongs_to :users_books
  belongs_to :categories
end
