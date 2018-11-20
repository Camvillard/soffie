class AddColumnsToUsersBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :users_books, :num_pages, :integer
    add_column :users_books, :description, :text
    add_column :users_books, :image_url, :string
  end
end
