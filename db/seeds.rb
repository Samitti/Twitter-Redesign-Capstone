# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
  {
    username: 'Barya',
    full_name: 'Barya Azeb'
  },
  {
    username: 'Joshua',
    full_name: 'Joshua Mark'
  },
  {
    username: 'Luke',
    full_name: 'Luke Pawlo'
  },
  {
    name: 'Mark',
    full_name: 'Mark Pawlo'
  },
  {
    name: 'Mathew',
    full_name: 'Mathew Pawlo'
  }
])

user1 = User.find_by(username: 'Barya')

user1 = User.find_by(username: 'Barya')
user1.posts.create!({
                        user_id: user1.id,
                        content: 'Hi this is Barya first post',
                       
})
user1.posts.create!({
                        user_id: user1.id,
                        content: 'Hi this is Barya second post',
                       
})
user1.posts.create!({
                        user_id: user1.id,
                        content: 'Hi this is Barya third post',
                       
})
user1.posts.create!({
                        user_id: user1.id,
                        content: 'Hi this is Barya fourth post',
                       
})