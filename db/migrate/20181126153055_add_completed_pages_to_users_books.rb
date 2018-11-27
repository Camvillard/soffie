class AddCompletedPagesToUsersBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :users_books, :completed_pages, :integer
  end
end
