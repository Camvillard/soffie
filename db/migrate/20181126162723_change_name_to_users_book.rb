class ChangeNameToUsersBook < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :users_books_id, :users_book_id
  end
end
