class AddUserToMoods < ActiveRecord::Migration[5.2]
  def change
    add_reference :moods, :user, foreign_key: true
  end
end
