class RemoveReferencesFromBookCategories < ActiveRecord::Migration[5.2]
  def change
    remove_reference :book_categories, :users_books
    remove_reference :book_categories, :categories
  end
end
