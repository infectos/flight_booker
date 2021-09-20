# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all
Flight.destroy_all

airports = Airport.create([
  { code: "SFO" },
  { code: "NYC" },
])

5.times do |i|
  Flight.create([
    { origin: airports.first, destination: airports.last, duration: 320, start: Faker::Time.forward(days:230) }
  ])
end
5.times do |i|
  Flight.create([
    { destination: airports.first, origin: airports.last, duration: 320, start: Faker::Time.forward(days:230) }
  ])
end