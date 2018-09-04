# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bookmark.create(
  url: 'https://trello.com/b/Dk8WQTlP/mentorself', 
  title: 'Trello',
  folder: 'Web',
  user_id: 1,
  finished: true,
  rating: 0,
  index: 0
)

Bookmark.create(
  url: 'https://www.justinweiss.com/articles/how-rails-sessions-work/', 
  title: 'Rails Web Sessions',
  folder: 'Web',
  user_id: 1,
  finished: false,
  rating: 0,
  index: 1
)

Bookmark.create(
  url: 'https://gmail.com/', 
  title: 'Gmail',
  folder: 'Email',
  user_id: 1,
  finished: false,
  rating: 0,
  index: 0
)