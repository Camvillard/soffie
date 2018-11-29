class ChangeDefaultImageForMoods < ActiveRecord::Migration[5.2]
  def change
    change_column_default :moods, :image_url, from: "https://res.cloudinary.com/camvillard/image/upload/v1543358544/soffie/book_1.jpg", to: "https://res.cloudinary.com/camvillard/image/upload/v1543452106/soffie/book-5.jpg"
  end
end
