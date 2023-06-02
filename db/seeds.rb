# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Review.destroy_all
Gear.destroy_all
User.destroy_all

require "open-uri"

puts 'Creating 10 fake users...'

addresses = [
  "Rue de la Loi 155, Brussels, Belgium",
  "Avenue Louise 500, Brussels, Belgium",
  "Rue des Bouchers 20, Brussels, Belgium",
  "Place du Grand Sablon 8, Brussels, Belgium",
  "Rue Neuve 123, Brussels, Belgium",
  "Rue des Fripiers 34, Brussels, Belgium",
  "Rue Jenner 3, Brussels, Belgium",
  "Rue Jenner 1, Brussels, Belgium",
  "Boulevard Anspach 20, Brussels, Belgium",
  "Rue Royale 4, Brussels, Belgium",
  "Avenue de Tervueren 13, Brussels, Belgium",
]

names = [
  "Quentin",
  "Gab",
  "Gaby",
  "Alejandro",
  "Ali",
  "Pedro",
  "Asli",
  "Thomas",
  "Charlotte",
  "Matt",
  "Cassy"
]

addresses.each_with_index do |address, index|
  file = URI.open("https://source.unsplash.com/random/?portrait")
  user = User.new(
    email: "#{names[index].downcase}@test.com",
    password: "qwerty",
    first_name: "#{names[index]}",
    last_name: Faker::Name.last_name,
    address: address
  )
  user.photo.attach(io: file, filename: "avatar.png", content_type: "image/png")
  user.save!
  puts "....almost there...."
end

puts 'Done!'


puts 'Creating camping gear...'
  gear = Gear.new(
    name: "Two person tent",
    short_description: "Ideal for long camping trips",
    description: "Lorem ipsum dolor sit amet. Et distinctio internos quo aperiam odio est minus voluptatem cum doloremque cumque. Eum iusto commodi eum dicta voluptas vel maiores sint.
    Eos dolor voluptate sit rerum praesentium sit amet rerum sed officia veniam At consequatur maiores id aliquam ducimus et libero dolorem. A similique tempora hic veritatis labore qui illo deserunt nam velit quaerat. Id aliquam dolor hic atque doloribus est saepe voluptates qui mollitia veniam et quasi dolore.",
    price: 59,
    category: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip']}"
  )
  file = URI.open("https://i.pinimg.com/564x/a7/cb/43/a7cb431cc757a2331b158c830c9ca251.jpg")
  gear.photo.attach(io: file, filename: "tent.jpg", content_type: "image")
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
    category: "#{['Hiking trip', 'Mountain trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1622260614927-208cfe3f5cfd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80")
  gear.photo.attach(io: file, filename: "backpack.jpg", content_type: "image")
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
    category: "#{['Hiking trip', 'Mountain trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1518388389348-b60e09ab7627?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80")
  gear.photo.attach(io: file, filename: "sleeping_bag.jpg", content_type: "image")
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
    category: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1445307806294-bff7f67ff225?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80")
  gear.photo.attach(io: file, filename: "hammock.jpg", content_type: "image")
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
    category: "#{['Hiking trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1606036525923-525fa3b35465?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80")
  gear.photo.attach(io: file, filename: "hammock.jpg", content_type: "image")
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
    category: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1522041350204-22285237eeca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNhbXBpbmcuJTIwc3RvdmV8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60")
  gear.photo.attach(io: file, filename: "camping_stove.jpg", content_type: "image")
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
    category: "#{['Biking trip', 'Hiking trip', 'Beach trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1557756731-a94d1274f2ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80")
  gear.photo.attach(io: file, filename: "camping_chair.jpg", content_type: "image")
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
    category: "#{['Biking trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1589668826748-42eb4396d492?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80")
  gear.photo.attach(io: file, filename: "bike_bags.jpg", content_type: "image")
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
    category: "#{['Beach trip', 'Hiking trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1525033072753-03c81e0abb92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2glMjB0b3dlbHN8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60")
  gear.photo.attach(io: file, filename: "beach_towels.jpg", content_type: "image")
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
    category: "#{['Beach trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1550720295-a59523cb8872?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80")
  gear.photo.attach(io: file, filename: "cooler.jpg", content_type: "image")
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
    category: "#{['Mountain trip']}"
  )
  file = URI.open("https://images.unsplash.com/photo-1614358536373-1ce27819009e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80")
  gear.photo.attach(io: file, filename: "ski_mask.jpg", content_type: "image")
  gear.user = User.all.sample
  gear.save!
puts 'Finished!'


puts "now creating reviews...."
users = User.all
Gear.all.each do |gear|
  puts "."
  reviewers = users - [gear.user]
  5.times do
    Review.new(
      rating: [2, 3, 4, 5].sample,
      content: Faker::Restaurant.review,
      user_id: reviewers.sample.id,
      gear_id: gear.id
    ).save!
  end
end

puts "All done yay"
