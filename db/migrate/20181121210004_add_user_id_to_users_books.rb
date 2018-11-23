class AddUserIdToUsersBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :users_books, :user, index: true
  end
end
