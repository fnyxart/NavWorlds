# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create 15 random users:
15.times do
  user = User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 10, max_length: 20)
  )
  puts "crated user '#{user.email}' !"
end

puts "Created #{User.count} users !"
puts "~~~~~~~~~"

# Create 6 tours with one of the first 6 users as 'guide':
tour1 = Tour.create(
  user: User.find(1),
  name: "Wonderland",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{tour1.name}' !"


tour2 = Tour.create(
  user: User.find(2),
  name: "Narnia",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{tour2.name}' !"

tour3 = Tour.create(
  user: User.find(3),
  name: "Narnia",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{tour3.name}' !"

tour4 = Tour.create(
  user: User.find(4),
  name: "Metropolis",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{tour4.name}' !"

tour5 = Tour.create(
  user: User.find(5),
  name: "Hell",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{tour5.name}' !"

tour6 = Tour.create(
  user: User.find(6),
  name: "Mars",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{tour5.name}' !"


puts "Finished creating #{Tour.count} tours !"



Metropolis
Gotham
Hell
