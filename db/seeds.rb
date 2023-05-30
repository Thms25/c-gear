# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Gear.destroy_all
User.destroy_all

require 'json'
require 'open-uri'


puts 'Creating 15 fake users...'
15.times do
  url = "https://source.unsplash.com/random/?portrait"
  file = URI.open(url).read
  User.new(
    email: Faker::Internet.email,
    password: "qwerty",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    pic: JSON.parse(file)
  ).save!
end
puts 'Done!'


puts 'Creating camping gear...'
  gear = Gear.new(
    name: "2 person tent",
    short_description: "Ideal for long camping trips",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 59,
    features: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip']}",
    image_url: "https://i.pinimg.com/564x/a7/cb/43/a7cb431cc757a2331b158c830c9ca251.jpg"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Backpack - 65L",
    short_description: "Super practical and comfy",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 24,
    features: "#{['Hiking trip', 'Mountain trip']}",
    image_url: "https://images.unsplash.com/photo-1622260614927-208cfe3f5cfd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'


puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Sleeping bag / -5°C - 15°C",
    short_description: "Perfect for cold nights",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 34,
    features: "#{['Hiking trip', 'Mountain trip']}",
    image_url: "https://images.unsplash.com/photo-1518388389348-b60e09ab7627?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Hammock",
    short_description: "Light, very good state",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 12,
    features: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip']}",
    image_url: "https://images.unsplash.com/photo-1445307806294-bff7f67ff225?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Hiking boots",
    short_description: "Unworn, size 42",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 10,
    features: "#{['Hiking trip']}",
    image_url: "https://images.unsplash.com/photo-1606036525923-525fa3b35465?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Camping stove",
    short_description: "1 bottle of gaz included",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 10,
    features: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip']}",
    image_url: "https://images.unsplash.com/photo-1522041350204-22285237eeca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNhbXBpbmcuJTIwc3RvdmV8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Camping chair",
    short_description: "Weighs 200gr",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 26,
    features: "#{['Biking trip', 'Hiking trip', 'Beach trip']}",
    image_url: "https://images.unsplash.com/photo-1557756731-a94d1274f2ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Bike saddle bags",
    short_description: "65L",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 35,
    features: "#{['Biking trip']}",
    image_url: "https://images.unsplash.com/photo-1589668826748-42eb4396d492?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Beach towels",
    short_description: "Set of 4",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 12,
    features: "#{['Beach trip', 'Hiking trip']}",
    image_url: "https://images.unsplash.com/photo-1525033072753-03c81e0abb92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjB0b3dlbHN8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Cooler",
    short_description: "Keeps food and drinks fresh for 24 hours",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 12,
    features: "#{['Beach trip']}",
    image_url: "https://images.unsplash.com/photo-1550720295-a59523cb8872?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'

puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Ski and mask",
    short_description: "Ski skins included",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 29,
    features: "#{['Mountain trip']}",
    image_url: "https://images.unsplash.com/photo-1614358536373-1ce27819009e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80"
  )
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'
