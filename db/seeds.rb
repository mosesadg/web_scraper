# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Apartment.create!(title: "1 Bedroom Manhattan", price: 1000, date: Date.today)
Apartment.create!(title: "1 Bedroom Queens", price: 1100, date: Date.today)
Apartment.create!(title: "1 Bedroom Brooklyn", price: 1200, date: Date.today)
Apartment.create!(title: "1 Bedroom Bronx", price: 1300, date: Date.today)
Apartment.create!(title: "1 Bedroom Staten Island", price: 1400, date: Date.today)
Apartment.create!(title: "2 Bedroom Manhattan", price: 2000, date: Date.today)
Apartment.create!(title: "2 Bedroom Queens", price: 2100, date: Date.today)
Apartment.create!(title: "2 Bedroom Brooklyn",  price: 2200, date: Date.today)
Apartment.create!(title: "2 Bedroom Bronx", price: 2300, date: Date.today)
Apartment.create!(title: "2 Bedroom Staten Island", price: 2400, date: Date.today)



puts "10 apartment records have been created"

