class AddReadingSpeedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reading_speed, :string
  end
end
