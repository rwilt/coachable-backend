# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Question.destroy_all
KeyPhrase.destroy_all
Interview.destroy_all
GameJoin.destroy_all
Game.destroy_all


User.create(name: "Buffy Summers", bio: "I love coding, cheese, and slaying vamps")