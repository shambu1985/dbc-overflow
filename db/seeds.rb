# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(username: "shamhavi", email:"shambhavi1976@gmail.com", password: "shambhavi1976")
10.times {
  question = Question.create(title: Faker::Company.bs , content: Faker::Lorem.sentence, user_id: user.id)
  answer = Answer.create(question_id: question.id, content: Faker::Lorem.sentence, user_id: user.id)
}
