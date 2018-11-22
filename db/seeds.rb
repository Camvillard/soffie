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
  { user_id: esteban.id,
    reading_time: "200",
    description: "an entertaining alphabet picture book...",
    num_pages: 200,
    title: 'chicka chicka boom boom',
    author: 'bill martin',
    image_url: 'image',
    isbn: 9781416990918
  },

  { user_id: esteban.id,
    reading_time: "200",
    description: "Feeling misunderstood at home and at school...",
    num_pages: 300, title: 'where the wild things are',
    author: 'maurice sendak',
    image_url: 'image',
    isbn: 9780064431781
  },

  { user_id: esteban.id,
    reading_time: "200",
    description: "a children's fantasy adventure novel...",
    num_pages: 500,
    title: 'the phantom tollbooth',
    author: 'norton juster',
    image_url: 'image',
    isbn: 9780394820378
  },
])

UsersBook.create([
  { user_id: camille.id,
    reading_time: "297",
    description: "it follows a wizard in his fourth year at...",
    num_pages: 2000,
    title: 'Harry Potter And The Goblet of Fire',
    author: 'JK Rowling',
    image_url: 'image',
    isbn: 9780747538486
  },

  { user_id: camille.id,
    reading_time: "297",
    description: "a novel based on her investigation into the life of...",
    num_pages: 1500,
    title: 'Rien ne soppose à la nuit',
    author: 'Delphine de Vigan',
    image_url: 'image',
    isbn: 9782253164265
  },

  { user_id: camille.id,
    reading_time: "297",
    description: "the novel focusses on Fredrik Welin, once a successful orthopaedic...",
    num_pages: 1000,
    title: 'Les Chaussures italiennes',
    author: 'Henning Mankell',
    image_url: 'image',
    isbn: 9782757821626
  },
  ])

UsersBook.create([
  { user_id: claire.id,
    reading_time: "221",
    description: "After learning that her lifelong...",
    num_pages: 600,
    title: 'My Brilliant Friend',
    author: 'Elena Ferrante',
    image_url: 'image',
    isbn: 9781609450786
  },

  { user_id: claire.id,
    reading_time: "221",
    description: "Set in the small Southern town of Maycomb...",
    num_pages: 500,
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    image_url: 'image',
    isbn: 9780446310789
  },

  { user_id: claire.id,
    reading_time: "221",
    description: "The novel is a murder thriller set in 1930s Brighton...",
    num_pages: 700,
    title: 'Brighton Rock',
    author: 'Graham Greene',
    image_url: 'image',
    isbn: 9780142437971
  },
  ])

users = User.all
usersbook = UsersBook.all

puts 'soffie is ready to search ^_^-b'
