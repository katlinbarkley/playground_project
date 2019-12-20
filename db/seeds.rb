# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#check to see if a user with the role of admin already exists, if it doesn't exist, create it. If it does ignore it.

if User.where(:role => "admin").length == 0
    User.create(email: 'admin@admin.com', password: 'asdfASDF1', first_name: 'Annie', last_name: 'Adams', zipcode: '12345', role: 'admin')
end
Playground.create(address: "105 E South St, Raleigh, Nc", zipcode: "27602", food:true, restaurant: "fast food",indoor:true , restrooms:true, fun:2, clean: 3, safety: 4)
Playground.create(address: "703 W Peace St, Raleigh, Nc", zipcode: "27605", food:true, restaurant: "fast food",indoor:true , restrooms:true, fun:2, clean: 2, safety: 5)
Playground.create(address: "3710 Western Blvd, Raleigh, Nc", zipcode: "27606", food:true, restaurant: "fast food",indoor:true , restrooms:true, fun:5, clean: 5, safety: 1)
Playground.create(address: "3424 Poole Rd, Raleigh, Nc", zipcode: "27610", food:true, restaurant: "fast food",indoor:true , restrooms:true, fun:5, clean: 5, safety: 1)
Playground.create(address: "2801 Old Wake Forest Rd, Raleigh, Nc", zipcode: "27609", food:true, restaurant: "fast food",indoor:true , restrooms:true, fun:5, clean: 5, safety: 1)
Playground.create(address: "4212 Wake Forest Road, Raleigh, Nc", zipcode: "27609", food:true, restaurant: "fast food",indoor:true , restrooms:true, fun:5, clean: 5, safety: 1)

#after rerun db:seeds