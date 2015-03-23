# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Package.delete_all

u1 = User.create(first_name: 'Tolu', email: 'Tolu@me.com', password: 'password', password_confirmation: 'password')
u2 = User.create(first_name: 'David', email: 'David@me.com', password: 'password', password_confirmation: 'password')

p1 = Package.create(user_id: u1.id , description: 'This includes flights hotels and 3 pre-booked attractions', price: 2000)