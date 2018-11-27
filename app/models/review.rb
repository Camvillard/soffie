class Review < ApplicationRecord
  belongs_to :users_book
  validates :content, presence: true, length: {minimum: 5}
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }

end
