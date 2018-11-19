class CreateUsersBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :users_books do |t|
      t.string :title
      t.string :author
      t.string :reading_time
      t.text :details

      t.timestamps
    end
  end
end
