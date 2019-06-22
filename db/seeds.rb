# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    Artist.create({ name: Faker::Music.band })
  end

  for i in 1..5 do 
    Album.create({ name: Faker::Music.album, artist_id: i }) 
  end