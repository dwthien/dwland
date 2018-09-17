require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = "password"
5.times do
  User.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    sign_in_count: Faker::Number.number(2),
    password: password,
    password_confirmation: password,
    last_request_at: Faker::Time.between(10.days.ago, Time.now),
    current_sign_in_at: Faker::Time.forward(1),
    last_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
    false_request: Faker::Number.number(1),
    false_response: Faker::Number.number(1),
  })
end