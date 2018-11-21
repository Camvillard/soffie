class ChangeIsbnInUsersBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :users_books, :isbn, :bigint
  end
end
