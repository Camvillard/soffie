class CreateBookMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :book_moods do |t|
      t.references :mood, foreign_key: true
      t.references :users_book, foreign_key: true

      t.timestamps
    end
  end
end
