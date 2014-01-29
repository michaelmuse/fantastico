# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
25.times do
  Airplane.create(
    name: Faker::Name::first_name, 
    manufacturer: "Boeing",
    passenger_capacity: rand(5..500),
    year_made: rand(1900..2014)
  )  
end