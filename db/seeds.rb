# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning the soffie db...'

User.delete_all
BookCategory.delete_all
UsersBook.delete_all
Category.delete_all

puts 'planting seeds for soffie...'

# esteban = User.create(email: 'esteban@lewagon.org', password: 'wagonwagon')
# claire = User.create(email: 'claire@lewagon.org', password: 'wagonwagon')
camille = User.create(email: 'camille@lewagon.org', password: 'wagonwagon')
# serge = User.create(email: 'serge@lewagon.org', password: 'wagonwagon')


# UsersBook.create([
#   { user_id: esteban.id, title: 'chicka chicka boom boom', author: 'bill martin', isbn: 9781416990918 },
  # {user_id: esteban.id, title: 'where the wild things are', author: 'maurice sendak', isbn: 9780064431781},
#   { user_id: esteban.id, title: 'the phantom tollbooth', author: 'norton juster', isbn: 9780394820378},
# ])


harry_potter_2 = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter And The Chamber Of Secrets',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "https://images.gr-assets.com/books/1474169725l/15881.jpg",
    num_pages: 357,
    reading_time: "32725"
    )

harry_potter_7 = UsersBook.create(
    user_id: camille.id,
    title: 'Harry Potter and the Deathly Hallows',
    author: 'JK Rowling',
    isbn: 9780747538486,
    image_url: "https://images.gr-assets.com/books/1474169725l/15881.jpg",
    num_pages: 784,
    reading_time: "71866",
    description: "Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind.The protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding. To stop Voldemort, Harry knows he must find the remaining Horcruxes and destroy them. He will have to face his enemy in one final battle."
    )

rien_ne_soppose = UsersBook.create(
    user_id: camille.id,
    title: 'Rien ne soppose à la nuit',
    author: 'Delphine de Vigan',
    isbn: 9782253164265,
    image_url: "https://images.gr-assets.com/books/1327247619l/12351695.jpg",
    num_pages: 352,
    reading_time: "32266.7"
    )

les_chaussures_italiennes = UsersBook.create(
    user_id: camille.id,
    title: 'Les Chaussures italiennes',
    author: 'Henning Mankell',
    isbn: 9782757821626,
    image_url: "https://images.gr-assets.com/books/1329585015l/7145210.jpg",
    num_pages: 352,
    reading_time: "322667"
    )

singuliere_tristesse = UsersBook.create(
    user_id: camille.id,
    title: 'La Singulière Tristesse du gâteau au citron',
    author: 'Aimee Bender',
    isbn: 9782879297804,
    image_url: "https://images.gr-assets.com/books/1369746930l/17984746.jpg",
    num_pages: 345,
    reading_time: "31625"
    )

Category.create(name: "fiction")
Category.create(name: "romance")
Category.create(name: "young adult")
Category.create(name: "drama")
Category.create(name: "mystery")
Category.create(name: "thriller")



harry_potter_2.categories = [Category.find_by(name: "young adult")]
rien_ne_soppose.categories = [Category.find_by(name: "fiction")]
les_chaussures_italiennes.categories = [Category.find_by(name: "drama")]
singuliere_tristesse.categories = [Category.find_by(name: "fiction")]

# UsersBook.create([
#   { user_id: claire.id, title: 'My Brilliant Friend', author: 'Elena Ferrante', isbn: 9781609450786},
#   { user_id: claire.id, title: 'To Kill a Mockingbird', author: 'Harper Lee', isbn: 9780446310789},
#   { user_id: claire.id, title: 'Brighton Rock', author: 'Graham Greene', isbn: 9780142437971},
#   ])

# users = User.all
# usersbook = UsersBook.all

puts 'soffie is ready to search'
