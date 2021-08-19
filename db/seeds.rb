# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

Reservation.destroy_all
Offer.destroy_all
User.destroy_all

user_test_photo = URI.open("https://pbs.twimg.com/profile_images/796521014041706497/sP2bB10n_400x400.jpg")
p user_test_photo
user_test = User.new(email: "test@test.com",
                     password: '123456',
                     first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name)
user_test.photo.attach(io: user_test_photo, filename: 'test.jpg', content_type: 'image/jpg')
puts "user test created"
user_test.save

10.times do
  user = User.new(email: Faker::Internet.unique.email,
                  password: '123456',
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name)
  user_photo = URI.open("https://i.pravatar.cc/150?u=#{user.email}")
  user.photo.attach(io: user_photo, filename: "#{user.first_name}_#{user.last_name}_photo.jpeg", content_type: 'image/jpeg')
  puts "creating user : #{user.first_name}..."
  user.save
end

10.times do
  cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                  age: rand(0..25),
                  price: rand(2..200),
                  race: Faker::Creature::Cat.breed,
                  description: Faker::TvShows::MichaelScott.quote,
                  location: 'paris',
                  user_id: User.all.pluck(:id).sample)
  cat_photo = URI.open("https://cataas.com/cat")
  cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
  puts "creating #{cat.name}!"
  cat.save
end

5.times do
  cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                  age: rand(0..25),
                  price: rand(2..200),
                  race: Faker::Creature::Cat.breed,
                  description: Faker::Movies::BackToTheFuture.quote,
                  location: 'paris',
                  user_id: User.all.pluck(:id).sample)
  cat_photo = URI.open("https://cataas.com/cat")
  cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
  puts "creating #{cat.name}!"
  cat.save
end


cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                  age: rand(0..25),
                  price: rand(2..200),
                  race: Faker::Creature::Cat.breed,
                  description: Faker::Movies::BackToTheFuture.quote,
                  location: '16 villa Gaudelet, Paris',
                  user_id: User.all.pluck(:id).sample)
  cat_photo = URI.open("https://cataas.com/cat")
  cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
  puts "creating #{cat.name}!"
  cat.save

5.times do
  cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                      age: rand(0..25),
                      price: rand(2..200),
                      race: Faker::Creature::Cat.breed,
                      description: Faker::Movies::StarWars.wookiee_sentence,
                      location: 'paris',
                      user_id: User.all.pluck(:id).sample)
  cat_photo = URI.open("https://cataas.com/cat")
  cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
  puts "creating #{cat.name}!"
  cat.save
end

5.times do
  cat = Offer.create!(name: Faker::Movies::StarWars.unique.specie,
                      age: rand(0..25),
                      price: rand(2..200),
                      race: Faker::Creature::Cat.breed,
                      description: Faker::Movies::HarryPotter.quote,
                      location: 'paris',
                      user_id: User.all.pluck(:id).sample)
  cat_photo = URI.open("https://cataas.com/cat")
  cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
  puts "creating #{cat.name}!"
  cat.save
end
