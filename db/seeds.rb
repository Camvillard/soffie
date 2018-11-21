# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning the soffie db...'

User.delete_all
UsersBook.delete_all

puts 'planting seeds for soffie...'

esteban = User.create(email: 'esteban@lewagon.org', password: 'wagonwagon')
claire = User.create(email: 'claire@lewagon.org', password: 'wagonwagon')
camille = User.create(email: 'camille@lewagon.org', password: 'wagonwagon')
serge = User.create(email: 'serge@lewagon.org', password: 'wagonwagon')


UsersBook.create([
  { user_id: esteban.id, title: 'chicka chicka boom boom', author: 'bill martin', isbn: 9781416990918 },
  {user_id: esteban.id, title: 'where the wild things are', author: 'maurice sendak', isbn: 9780064431781},
  { user_id: esteban.id, title: 'the phantom tollbooth', author: 'norton juster', isbn: 9780394820378},
])

UsersBook.create([
  { user_id: camille.id, title: 'Harry Potter And The Chamber Of Secrets', author: 'JK Rowling', isbn: 9780747538486},
  { user_id: camille.id, title: 'Rien ne soppose à la nuit', author: 'Delphine de Vigan', isbn: 9782253164265},
  { user_id: camille.id, title: 'Les Chaussures italiennes', author: 'Henning Mankell', isbn: 9782757821626},
  ])

UsersBook.create([
  { user_id: claire.id, title: 'My Brilliant Friend', author: 'Elena Ferrante', isbn: 9781609450786},
  { user_id: claire.id, title: 'To Kill a Mockingbird', author: 'Harper Lee', isbn: 9780446310789},
  { user_id: claire.id, title: 'Brighton Rock', author: 'Graham Greene', isbn: 9780142437971},
  ])

users = User.all
usersbook = UsersBook.all

puts 'soffie is ready to search'
