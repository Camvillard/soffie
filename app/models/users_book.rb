class UsersBook < ApplicationRecord
  has_many :book_categories
  has_many :categories, through: :book_categories
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
end




# mon livre a 350 pages = 96250 mots
# je peux lire 180 mots par 60 secondes
# je mets 32083.4 secondes pour lire mon livre

# hp2 = 98175 * 60 / 180 = 32725
# hp7 = 215600 * 60 / 180 = 71866
# rien = 96800 * 60 / 180 = 32266.7
# chaussures = 322667
#gateau = 31625

