# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create 10 random users:
10.times do
  user = User.create(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 10, max_length: 20)
  )
  puts "created user '#{user.email}' !"
end

# Create 'tour guide' users for demo:
white_rabbit = User.create(
  name: "White Rabbit",
  email: "white@rabbit.wld",
  password: "Ra66iT-123"
)

superman = User.create(
  name: "Superman",
  email: "super@man.mpl",
  password: "Sup3rMan2000"
)

aslan = User.create(
  name: "Aslan",
  email: "aslan@lion.zoo",
  password: "z00k33per"
)

puts "Created #{User.count} users !"
puts "~~~~~~~~~"

# Create 6 tours with one of the first 6 users as 'guide':
wonderland = Tour.create(
  user: white_rabbit,
  name: "Wonderland",
  description: "The setting is Wonderland, a strange and seemingly crazy world that is entered by dropping into a rabbit hole. Animals act as normal people. ... The land is heavily wooded and grows mushrooms. There are well-kept gardens and substantial houses, such as those of the Duchess and the White Rabbit. Wonderland has a seacoast, where the Mock Turtle lives.",
  price: (99..999).to_a.sample,
  photo_url: "https://www.albawaba.com/sites/default/files/styles/default/public/im/wonderland-alice.jpg?itok=xPE8tUDt"
)
puts "created tour: '#{wonderland.name}' !"

narnia = Tour.create(
  user: aslan,
  name: "Narnia",
  description: "The mystical world of Narnia is a disc-shaped world (unlike Earth, which is spherical), with the sky like a great dome that met the world around its circumference, on which the other side, and indeed all around the world's edges, is the mysterious land called Aslan's Country.",
  price: (99..999).to_a.sample,
  photo_url: "https://narniafans.com/wp-content/uploads/2020/09/narnia-678x381.jpg"
)
puts "created tour: '#{narnia.name}' !"

gotham = Tour.create(
  user: User.find(3),
  name: "Gotham",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{gotham.name}' !"

metropolis = Tour.create(
  user: superman,
  name: "Metropolis",
  description: "The idea of describing a city of about one hundred years hence, with all its modern achievements, is of course a very tempting and interesting one, for everyone likes to have a glimpse into the future, and nearly everybody has some idea of the technical developments of some kind, according to their imagination… See if this one can match yours!",
  price: (99..999).to_a.sample,
  photo_url: "https://images.unsplash.com/photo-1517144447511-aebb25bbc5fa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80"
)
puts "created tour: '#{metropolis.name}' !"

hell = Tour.create(
  user: User.find(5),
  name: "Hell",
  description: "",
  price: (99..999).to_a.sample,
  photo_url: ""
)
puts "created tour: '#{hell.name}' !"

mars = Tour.create(
  user: User.find(6),
  name: "Mars",
  description: "The cruise phase begins after the spacecraft separates from the rocket, soon after launch. The spacecraft departs Earth at a speed of about 24,600 mph (about 39,600 kph). The trip to Mars will take about seven months and about 300 million miles (480 million kilometers).",
  price: 9999,
  photo_url: "https://images.unsplash.com/photo-1571769267292-e24dfadebbdc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1780&q=80"
)
puts "created tour: '#{mars.name}' !"

puts "Finished creating #{Tour.count} tours !"
