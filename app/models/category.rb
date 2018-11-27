class Category < ApplicationRecord
  has_many :book_categories
  has_many :users_books, through: :book_categories

  def self.add_new_category(data, book)
    # cat_name = define_category(data)
    if data["categories"].present? && Category.find_by(name: data["categories"])
      cat = Category.find_by(name: data["categories"])
    elsif data["categories"].present?
      cat = Category.create(name: data["categories"][0])
    else
      cat = Category.create(name: "uncategorized")
    end
    book.categories << cat
  end

end
