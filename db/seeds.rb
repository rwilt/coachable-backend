# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying previous data"

User.destroy_all
Question.destroy_all
KeyPhrase.destroy_all
Interview.destroy_all
GameJoin.destroy_all
Game.destroy_all

puts "beginning seed"
user1 = User.create(name: "Buffy Summers", bio: "I love coding, cheese, and slaying vamps.", photo_url: "https://i5.lisimg.com/7186945/411full.jpg")
user2 = User.create(name: "Willow Rosenberg", bio: "Looking for a role that combines technology and magic.", photo_url: "https://media1.popsugar-assets.com/files/thumbor/X1HW0zJmjgPrDw-Jd2U4oXsgEuU/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/02/23/805/n/1922283/beae7280dc847189_will/i/Alyson-Hannigan-Willow-Rosenberg.JPG")

question1 = Question.create(content: "Tell me about yourself.", industry: "General")
question2 = Question.create(content: "Why do you want to work here?", industry: "General")
question3 = Question.create(content: "What are your technical certifications?", industry: "Tech")
question4 = Question.create(content: "What technical websites do you follow?", industry: "Tech")
question5 = Question.create(content: "What kind of tech projects do you work on in your spare time?", industry: "Tech")
question6 = Question.create(content: "What did you learn from your final project?", industry: "Tech")
question7 = Question.create(content: "What do you consider to be your weaknesses?", industry: "General")
question8 = Question.create(content: "Tell me about a time you made a mistake", industry: "General")
question9 = Question.create(content: "Tell me about a time you failed.", industry: "General")
question10 = Question.create(content: "What are you passionate about?", industry: "General")

interview1 = Interview.create(industry: "Tech", title: "Software Engineer", interviewer: "Ted", company: "Lorrin Software", note: "Ted seems a little robotic, but nice!", result: false, user_id: user1.id)
interview2 = Interview.create(industry: "Tech", title: "Junior Developmer", interviewer: "Maggie Walsh", company: "UC Sunnydale", note: "Maggie is intense. Cares a lot about AI.", result: false, user_id: user2.id)

game1 = Game.create(user_id: user1.id)
game2 = Game.create(user_id: user2.id)

key_phrase1 = KeyPhrase.create(phrases: ["JavaScript", "Ruby", "Python"], industry: "Tech", game_id: game1.id)
key_phrase2 = KeyPhrase.create(phrases: ["Managed", "Ownership", "Results"], industry: "General", game_id: game2.id)

GameJoin.create(question_id: question1.id, game_id: game1.id)
GameJoin.create(question_id: question9.id, game_id: game1.id)
GameJoin.create(question_id: question3.id, game_id: game1.id)
GameJoin.create(question_id: question4.id, game_id: game1.id)
GameJoin.create(question_id: question5.id, game_id: game1.id)
GameJoin.create(question_id: question1.id, game_id: game2.id)
GameJoin.create(question_id: question6.id, game_id: game2.id)
GameJoin.create(question_id: question7.id, game_id: game2.id)
GameJoin.create(question_id: question8.id, game_id: game2.id)
GameJoin.create(question_id: question9.id, game_id: game2.id)
GameJoin.create(question_id: question10.id, game_id: game2.id)


puts "finished seed"