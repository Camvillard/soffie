class ChangeDefaultPictureForMoods < ActiveRecord::Migration[5.2]
  def change
    change_column_null :moods, :image_url, false
    change_column_default :moods, :image_url, from: false, to: "https://res.cloudinary.com/camvillard/image/upload/v1543358544/soffie/book_1.jpg"
  end
end
