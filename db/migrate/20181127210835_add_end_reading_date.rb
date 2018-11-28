class AddEndReadingDate < ActiveRecord::Migration[5.2]
  def change
    add_column :users_books, :end_readingdate, :string
  end
end
