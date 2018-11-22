class AddReferencesToBookCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :book_categories, :users_book, foreign_key: true
    add_reference :book_categories, :category, foreign_key: true
  end
end
