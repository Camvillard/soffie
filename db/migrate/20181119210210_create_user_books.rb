class CreateUserBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.string :title
      t.string :author
      t.string :reading_time
      t.text :details
    end
  end
end
