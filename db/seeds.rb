# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

soif = { name: 'soif', address: 'bordeaux', category: 'french', phone_number: '+33304827293'}
septime = { name: 'septime', address: 'paris', category: 'french', phone_number: '+33304927293'}
fufu = {name: 'fufu', address: 'bordeaux', category: 'japanese', phone_number: '+33304827293'}
mamalouisa = { name: 'mama louisa', address: 'rennes', category: 'italian', phone_number: '+33234827293'}
brasserierene = {name: 'brasserie rene', address: 'bruxelles', category: 'belgian', phone_number: '+32304827293'}

[soif, septime, fufu, mamalouisa, brasserierene].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
