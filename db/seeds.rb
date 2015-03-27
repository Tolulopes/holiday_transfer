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
d2 = Destination.create(name: 'Madrid')


p1 = Package.create(user_id: u1.id , description: 'Business class ticket, Jumeirah Beach Hotel 2 pre-booked attractions', price: 2000)

p2 = Package.create(user_id: u2.id, description: 'Museum fanatics dream vacation with access to Madrids finest Museums', price: 1000)


t1 = Ticket.create(current_location: 'London', destination_id: d1.id, ticket_class: 'business' , airline: 'Virgin Atlantic', booking_reference: 'v1456', baggage_allowance: '23', departure_time: '2015-04-22-09:00', arrival_time: '2015-04-22-16:00', round_trip: true, price: 1200, package_id: p1.id)

t2 = Ticket.create(current_location: 'London', destination_id: d2.id, ticket_class: 'First' , airline: 'British Airways', booking_reference: 'ba986', baggage_allowance: '23', departure_time: '2015-05-29-09:00', arrival_time: '2015-05-29 13:00', round_trip: true, price: 800, package_id: p2.id)


a1 = Attraction.create(name: 'Desert Excursion' , description: 'Camel Rides & Quadbiking' , location: 'Golden Desert Dubai' , date: '2015-04-22-14:00', package_id: p1.id, image: "camel.jpg")


a2 = Attraction.create(name: 'Museum Tour' , description: 'Finest Museums in Madrid' , location: 'Plaza Mayor 28012 Madrid Spain' , date: '2015-05-30-13:00', package_id: p2.id, image: "spain.jpeg")

a3 = Attraction.create(name: 'Palm Beach Hotel' , description: 'Champagne Buffet' , location: 'Palm Beach Dubai' , date: '2015-04-24-14:00', package_id: p1.id, image: "palm.jpeg")

a4 = Attraction.create(name: 'Madrid Food Tour' , description: 'Madrid Food Tour is a unique culinary experience for visitors and locals alike' , location: 'Costanilla de los Desamparados', date: '2015-06-1-09:30', package_id: p2.id, image: "madrid1.jpg")

h1 = Hotel.create(name: 'Jumeirah Beach Hotel' , address: 'Jumeirah Beach Hotel Jumeirah Dubai United Arab Emirates' , checkin: '2015-04-22-15:00', checkout: '2014-04-30-12:00' , stars: '5' , package_id: p1.id)

h2 = Hotel.create(name: '')


puts 'seeded it'