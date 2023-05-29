# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating 10 fake users...'
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "abcdefg"
  )
  user.save!
end
puts 'Finished!'


puts 'Creating 50 fake camping gear...'
50.times do
  gear = Gear.new(
    name: "#{Faker::Camera.brand}, #{Faker::Hobby.activity}",
    price: "#{rand(30..160)} €",
    features: "#{['Biking trip', 'Hiking trip', 'Mountain trip', 'Beach trip'].sample}"
  )
  gear.user = User.all.sample
  gear.save!
end
puts 'Finished!'
