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

u1 = User.create(first_name: 'Tolu', email: 'Tolu@me.com', password: 'password', password_confirmation: 'password')
u2 = User.create(first_name: 'David', email: 'David@me.com', password: 'password', password_confirmation: 'password')



p1 = Package.create(user_id: u1.id , description: 'This includes flights hotels and 3 pre-booked attractions', price: 2000)

p2 = Package.create(user_id: u2.id, description: 'Five Star vacation with two first class tickets to bora bora', price: 5000)



t1 = Ticket.create(current_location: 'London', destination: 'Dubai', ticket_class: 'business' , airline: 'Virgin Atlantic', booking_reference: 'v1456', baggage_allowance: '23', departure_time: '2015-04-22-09:00', arrival_time: '2015-04-22-16:00', gate: 'G14', gate_opening_time: '08:00', gate_closing_time: '08:50', round_trip: true, price: 1200, package_id: p1.id)



t2 = Ticket.create(current_location: 'London', destination: 'BoraBora', ticket_class: 'First' , airline: 'British Airways', booking_reference: 'ba986', baggage_allowance: '23', departure_time: '2015-05-29-09:00', arrival_time: '2015-05-30 10:00', gate: 'A12', gate_opening_time: '08:00', gate_closing_time: '08:50', round_trip: true, price: 3500, package_id: p2.id)


puts 'seeded it'