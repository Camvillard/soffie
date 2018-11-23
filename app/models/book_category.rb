class BookCategory < ApplicationRecord
  belongs_to :users_book
  belongs_to :category
end
