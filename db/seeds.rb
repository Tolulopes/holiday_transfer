# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Package.delete_all
Ticket.delete_all
Attraction.delete_all
Hotel.delete_all
Destination.delete_all

u1 = User.create(first_name: 'Tolu', email: 'Tolu@me.com', password: 'password', password_confirmation: 'password')

u2 = User.create(first_name: 'David', email: 'David@me.com', password: 'password', password_confirmation: 'password')

d1 = Destination.create(name: 'Dubai')
d2 = Destination.create(name: 'BoraBora')

p1 = Package.create(user_id: u1.id , description: 'This includes flights hotels and 3 pre-booked attractions', price: 2000)

p2 = Package.create(user_id: u2.id, description: 'Five Star vacation with two first class tickets to bora bora', price: 5000)


t1 = Ticket.create(current_location: 'London', destination_id: d1.id, ticket_class: 'business' , airline: 'Virgin Atlantic', booking_reference: 'v1456', baggage_allowance: '23', departure_time: '2015-04-22-09:00', arrival_time: '2015-04-22-16:00', round_trip: true, price: 1200, package_id: p1.id)

t2 = Ticket.create(current_location: 'London', destination_id: d2.id, ticket_class: 'First' , airline: 'British Airways', booking_reference: 'ba986', baggage_allowance: '23', departure_time: '2015-05-29-09:00', arrival_time: '2015-05-30 10:00', round_trip: true, price: 3500, package_id: p2.id)

a1 = Attraction.create(name: 'Desert Excursion' , description: 'Camel Rides & Quadbiking' , location: 'Golden Desert Dubai' , date: '2015-04-22-14:00', package_id: p1.id, image: "camel.jpg")

# a1.image = File.open("#{Rails.root}/app/assets/images/camel.jpg")
# a1.save!

a2 = Attraction.create(name: 'Bora Bora Dream' , description: 'Love Boat Ride' , location: 'Tourquise Lagoon' , date: '2015-05-30-13:00', package_id: p2.id, image: "camel.jpg")

a3 = Attraction.create(name: 'Palm Hotel' , description: 'Fancy Lunch' , location: 'palm beach dubai' , date: '2015-04-24-14:00', package_id: p1.id, image: "camel.jpg")

h1 = Hotel.create(name: 'Jumeirah Beach Hotel' , address: 'Jumeirah Beach Hotel Jumeirah Dubai United Arab Emirates' , checkin: '2015-04-22-15:00', checkout: '2014-04-30-12:00' , stars: '5' , package_id: p1.id)


puts 'seeded it'