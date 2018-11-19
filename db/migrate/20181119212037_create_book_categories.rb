class CreateBookCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :book_categories do |t|
      t.references :users_books, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
