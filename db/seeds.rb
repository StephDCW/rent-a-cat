# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Offer.destroy_all
User.destroy_all

User.create!(email: "test@test.com",
              password: '123456',
              password_confirmation: '123456',
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name)

50.times do
  User.create(email: Faker::Internet.unique.email,
              password: '123456',
              password_confirmation: '123456',
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name)
end

25.times do
  Offer.create!(name: Faker::Creature::Cat.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: 'paris',
                user_id: User.all.pluck(:id).sample)
end

25.times do
  Offer.create!(name: Faker::Creature::Cat.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::HowIMetYourMother.quote,
                location: 'paris',
                user_id: User.all.pluck(:id).sample)
end
