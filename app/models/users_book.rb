class UsersBook < ApplicationRecord
  has_many :book_categories
  has_many :categories, through: :book_categories
  has_many :book_moods
  has_many :moods, through: :book_moods
  belongs_to :user

  # before_save :define_reading_time_for_a_book
  after_create :define_reading_time_for_a_book

  def define_reading_time_for_a_book
    # returns a number of seconds to read the book
    reading_speed = self.user.reading_speed.nil? ? "200" : self.user.reading_speed
    total_words = self.num_pages * 275.0
    total_time_for_a_book = total_words * 60.0 / reading_speed.to_f
    self.update(reading_time: total_time_for_a_book)
  end

  def is_valid?(categories)
    self.categories.each do |category|
      if categories.include?(category)
        return true
      end
    end
    false
  end
end
