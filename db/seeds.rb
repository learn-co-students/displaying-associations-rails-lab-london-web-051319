# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times{Artist.create(name: Faker::Music::RockBand.unique.name)}

a = Artist.all.first.id
z = Artist.all.last.id

50.times{Song.create(title: Faker::Music::Phish.unique.song, artist_id: rand(a..z))}
