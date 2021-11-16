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
6.times do
  user_id = (1..6).to_a.sample
  tour = Tour.create(
    user: User.find(user_id),
    name: Faker::Marketing.buzzwords,
    description: Faker::Games::WorldOfWarcraft.quote,
    price: (99..999).to_a.sample,
    photo_url: "https://source.unsplash.com/random/400x200"
  )
  puts "created tour: '#{tour.name}' !"
end

puts "Finished creating #{Tour.count} tours !"
