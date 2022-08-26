# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
app_setting = AppSetting.create!(
    theme_name: 'quartz',
    tab_name: 'acme_app'
)
puts app_setting.inspect 

user1 = User.create(
    name: 'Nahush',
    email: 'nahushsng@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    admin: 1

)
puts user1.inspect

user2 = User.create(
    name: 'Nah',
    email: 'sng@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    admin: 0

)
puts user2.inspect

user3 = User.create(
    name: 'again',
    email: 'email2',
    password: '123456',
    password_confirmation: '123456',
    admin: 1

)
puts user3.inspect