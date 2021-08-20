# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or new alongside the database with db:setup).
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
user_test.save!

10.times do
  user = User.new(email: Faker::Internet.unique.email,
                  password: '123456',
                  first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name)
  user_photo = URI.open("https://i.pravatar.cc/150?u=#{user.email}")
  user.photo.attach(io: user_photo, filename: "#{user.first_name}_#{user.last_name}_photo.jpeg", content_type: 'image/jpeg')
  puts "creating user : #{user.first_name}..."
  user.save!
end

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '257 Rue de Charenton, 75012 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '57 Rue de Vouillé, 75015 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '14 Quai de la Loire, 75019 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: "4 Rue de l'Évangile, 75018 Paris",
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '44 Rue Saint-Ferdinand, 75017 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '24 Rue du Dr Finlay, 75015 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '178 Rue de Grenelle, 75007 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '37 Rue Godot de Mauroy, 75009 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '184 Rue Saint-Jacques, 75005 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '177 Quai de Valmy, 75010 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '8 Av. Dutuit, 75008 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: "14 Rue de l'Arrivée, 75015 Paris",
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '16 villa Gaudelet, Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: "5 Rue de l'Échiquier, 75010 Paris",
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '143 Rue de Charonne, 75011 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '78 Rue de Charonne, 75011 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '14 Rue de Cotte, 75012 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '10 Rue Alexandre Dumas, 75011 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.create!(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '34 Place de la Madeleine, paris',
                     user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '257 Rue de Charenton, 75012 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '57 Rue de Vouillé, 75015 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: "4 Rue de l'Évangile, 75018 Paris",
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '44 Rue Saint-Ferdinand, 75017 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Creature::Cat.unique.name,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::TvShows::MichaelScott.quote,
                location: '24 Rue du Dr Finlay, 75015 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '178 Rue de Grenelle, 75007 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '37 Rue Godot de Mauroy, 75009 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '184 Rue Saint-Jacques, 75005 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '177 Quai de Valmy, 75010 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '8 Av. Dutuit, 75008 Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: "14 Rue de l'Arrivée, 75015 Paris",
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::SuperSmashBros.unique.fighter,
                age: rand(0..25),
                price: rand(2..200),
                race: Faker::Creature::Cat.breed,
                description: Faker::Movies::BackToTheFuture.quote,
                location: '16 villa Gaudelet, Paris',
                user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: "5 Rue de l'Échiquier, 75010 Paris",
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '143 Rue de Charonne, 75011 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '78 Rue de Charonne, 75011 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '14 Rue de Cotte, 75012 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '10 Rue Alexandre Dumas, 75011 Paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Games::Pokemon.unique.name,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::StarWars.wookiee_sentence,
                    location: '34 Place de la Madeleine, paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Movies::StarWars.unique.specie,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::HarryPotter.quote,
                    location: '45 rue du faubourg saint-antoine, 75011, paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Movies::StarWars.unique.specie,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::HarryPotter.quote,
                    location: '110 rue Nationale, paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Movies::StarWars.unique.specie,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::HarryPotter.quote,
                    location: '37 rue La Boétie, paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Movies::StarWars.unique.specie,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::HarryPotter.quote,
                    location: '137 Square de la Couronne, paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!

cat = Offer.new(name: Faker::Movies::StarWars.unique.specie,
                    age: rand(0..25),
                    price: rand(2..200),
                    race: Faker::Creature::Cat.breed,
                    description: Faker::Movies::HarryPotter.quote,
                    location: '51 Faubourg Saint Honoré, paris',
                    user_id: User.all.pluck(:id).sample)
cat_photo = URI.open("https://cataas.com/cat?type=md")
cat.photo.attach(io: cat_photo, filename: "#{cat.name}_photo.jpeg", content_type: "image/jpeg")
puts "creating #{cat.name}!"
cat.save!
