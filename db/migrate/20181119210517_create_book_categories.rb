class CreateBookCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :book_categories do |t|
      t.references :user_book, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
