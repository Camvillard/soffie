class AddIsbnToUsersBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :users_books, :isbn, :integer

  end
end
