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

#after rerun db:seeds