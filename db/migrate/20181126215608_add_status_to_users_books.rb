class AddStatusToUsersBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :users_books, :status, :string
  end
end
