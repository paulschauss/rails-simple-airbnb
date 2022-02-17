# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flat.destroy_all

puts 'Creating 20 fake flats...'
20.times do
  flat = Flat.new(
    name: Faker::Movie.title,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Hipster.paragraph,
    banner_url: 'https://source.unsplash.com/random',
    price_per_night: rand(40..250),
    number_of_guests: rand(2..8)
  )
  flat.save!
end
puts 'Finished!'
