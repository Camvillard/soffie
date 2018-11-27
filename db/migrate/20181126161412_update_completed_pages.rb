class UpdateCompletedPages < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users_books, :completed_pages, 0
  end
end
