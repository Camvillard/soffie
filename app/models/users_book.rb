class UsersBook < ApplicationRecord
  has_many :book_categories
  has_many :categories, through: :book_categories

  after_save :define_reading_time_for_a_book
  after_create :define_reading_time_for_a_book

  def define_reading_time_for_a_book
    # i can read user.reading_time pages per hour
    # the book has usersbook.num_pages pages
    # average of 275 words per page for a book
    pages_per_minute = 275 / current_user.reading_speed.to_i
    total_time_for_a_book = self.num_pages.to_i * pages_per_minute.to_i
  end

end
