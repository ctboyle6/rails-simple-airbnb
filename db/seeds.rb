# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)''

puts 'clearing old data...'

Flat.destroy_all

puts 'all clean'

puts 'adding some new data'

4.times do
  flat = Flat.create!(
    name: Faker::Book.title,
    address: Faker::Address.full_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: rand(200),
    number_of_guests: rand(6)
  )
  puts "Flat #{flat.id} created"
end

puts 'done!'
