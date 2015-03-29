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
u3 = User.create(first_name: 'Jorge', email: 'Jorge@me.com', password: 'password', password_confirmation: 'password')


d1 = Destination.create(name: 'Dubai')
d2 = Destination.create(name: 'Madrid')
d3 = Destination.create(name: 'Cluj-Napoca')


p1 = Package.create(user_id: u1.id , description: 'Business class ticket, Jumeirah Beach Hotel 2 pre-booked attractions', price: 2000)

p2 = Package.create(user_id: u2.id, description: 'Museum fanatics dream vacation with access to Madrids finest Museums', price: 1000)

p3 = Package.create(user_id: u3.id, description: 'Transylvania Excursion', price: 1500)


t1 = Ticket.create(current_location: 'London', destination_id: d1.id, ticket_class: 'business' , airline: 'Virgin Atlantic', booking_reference: 'v1456', baggage_allowance: '23', departure_time: '2015-04-22-09:00', arrival_time: '2015-04-22-16:00', round_trip: true, price: 1200, package_id: p1.id)

t2 = Ticket.create(current_location: 'London', destination_id: d2.id, ticket_class: 'First' , airline: 'British Airways', booking_reference: 'ba986', baggage_allowance: '23', departure_time: '2015-05-29-09:00', arrival_time: '2015-05-29-13:00', round_trip: true, price: 800, package_id: p2.id)

t3 = Ticket.create(current_location: 'London', destination_id: d3.id, ticket_class: 'Economy', airline: 'Wizzyair', booking_reference: 'wr876', baggage_allowance: '20', departure_time: '2015-07-01-12:00', arrival_time: '2015-07-01-15:00', round_trip: true, price: 1250, package_id: p3.id)


a1 = Attraction.create(name: 'Desert Excursion' , description: 'Camel Rides & Quadbiking' , location: 'Golden Desert Dubai' , date: '2015-04-22-14:00', package_id: p1.id, image: "camel.jpg")


a2 = Attraction.create(name: 'Museum Tour' , description: 'Finest Museums in Madrid' , location: 'Plaza Mayor 28012 Madrid Spain' , date: '2015-05-30-13:00', package_id: p2.id, image: "spain.jpeg")

a3 = Attraction.create(name: 'Palm Beach Hotel' , description: 'Champagne Buffet' , location: 'Palm Beach Dubai' , date: '2015-04-24-14:00', package_id: p1.id, image: "palm.jpeg")

a4 = Attraction.create(name: 'Madrid Food Tour' , description: 'Madrid Food Tour is a unique culinary experience for visitors and locals alike' , location: 'Costanilla de los Desamparados', date: '2015-06-1-09:30', package_id: p2.id, image: "madrid1.jpg")

a5 = Attraction.create(name: 'Count Draculas Castle', description: 'Dramatic, 14th-century castle, former royal residence & alleged legend of Count Dracula inspiration.' , location: 'bran castle sighisoara', date: '2015-07-02-12:00', package_id: p3.id, image: "dracula.jpeg")

a6 = Attraction.create(name: 'Salina Turda', description: 'Salina Turda is a salt mine located in Durgău-Valea Sărată area of Turda, second largest city in Cluj County, Romania.', location: 'Aleea Durgăului 7, Turda 401106, Romania' , date: '2015-07-03-14:00', package_id: p3.id, image: "salina.jpeg")


h1 = Hotel.create(name: 'Jumeirah Beach Hotel' , address: 'Jumeirah Beach Hotel Jumeirah Dubai United Arab Emirates' , checkin: '2015-04-22-15:00', checkout: '2014-04-30-12:00' , stars: '5' , package_id: p1.id)

h2 = Hotel.create(name: 'Hotel Atlántico Madrid', address: ' Calle Gran Vía, 38, 28013 Madrid, Spain' , checkin: "2015-05-29-14:00"  , checkout: "2015-06-04-12:00" , stars: '4', package_id: p2.id)

h3 = Hotel.create(name: 'Club Vila Bran' , address: 'str. Alunis, nr. 9, Bran, Bran 507025, Romania', checkin: "2015-07-01-13:00" , checkout: "2015-07-06" , stars: '4', package_id: p3.id)


puts 'seeded it'