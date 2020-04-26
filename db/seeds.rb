# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_rob = User.create!(name: 'Rob', login: 'rob', email: 'admin@testguru.com', password: 'password', first_name: 'Rob', last_name: 'Geek', role: 1)
user_bob = User.create!(name: 'Bob', login: 'bob', email: 'user@testguru.com', password: 'password', first_name: 'Bob', last_name: 'Lime', role: 1)

category_backend = Category.create!(title: 'Backend')
category_frontend = Category.create!(title: 'Frontend')

test_back_rails = Test.create!(title: 'Rails Backend', level: 1, category_id: category_backend.id, author_id: user_bob.id)
test_front_rails = Test.create!(title: 'Rails Frontend', level: 2, category_id: category_frontend.id, author_id: user_rob.id)
test_back_net_core = Test.create!(title: '.Net Core Backend', level: 1, category_id: category_backend.id, author_id: user_bob.id)
test_front_net_core = Test.create!(title: '.Net Core Frontend', level: 2, category_id: category_frontend.id, author_id: user_rob.id)

question_rails_back_1 = Question.create!(text: 'What is Ruby?', number: 1, test_id: test_back_rails.id)
question_rails_back_2 = Question.create!(text: 'What is Rails?', number: 1, test_id: test_back_rails.id)
question_rails_front_1 = Question.create!(text: 'What is HTML?', number: 2, test_id: test_front_rails.id)
question_rails_front_2 = Question.create!(text: 'What is CSS?', number: 2, test_id: test_front_rails.id)

Answer.create!(text: 'Fish', correct: false, question_id: question_rails_back_1.id)
Answer.create!(text: 'Fruit', correct: false, question_id: question_rails_back_1.id)
Answer.create!(text: 'Programming language', correct: true, question_id: question_rails_back_1.id)

Answer.create!(text: 'Oil', correct: false, question_id: question_rails_back_2.id)
Answer.create!(text: 'Animal', correct: false, question_id: question_rails_back_2.id)
Answer.create!(text: 'Ruby on Rails framework', correct: true, question_id: question_rails_back_2.id)
