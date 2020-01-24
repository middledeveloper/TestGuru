# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: 'Backend')
Category.create(title: 'Frontend')
Category.create(title: 'Others')

Test.create(title: 'Ruby', level: 1, category_id: 1, author_id: 1)
Test.create(title: 'Rails', level: 2, category_id: 1, author_id: 1)
Test.create(title: 'C#', level: 0, category_id: 1, author_id: 2)
Test.create(title: '.Net Core', level: 1, category_id: 1, author_id: 2)
Test.create(title: 'JavaScript', level: 0, category_id: 2, author_id: 1)
Test.create(title: 'React', level: 1, category_id: 2, author_id: 2)
Test.create(title: 'Angular', level: 1, category_id: 2, author_id: 1)

Question.create(text: 'What is Ruby?', number: 1, test_id: 1)
Question.create(text: 'What means == ?', number: 2, test_id: 1)
Question.create(text: 'What is Rails?', number: 1, test_id: 2)
Question.create(text: 'What means to_s ?', number: 2, test_id: 2)
Question.create(text: 'What is C#?', number: 1, test_id: 3)
Question.create(text: 'What is ternary operator', number: 2, test_id: 3)

Answer.create(text: 'Fish', correct: false, question_id: 1)
Answer.create(text: 'Fruit', correct: false, question_id: 1)
Answer.create(text: 'Programming language', correct: true, question_id: 1)

Answer.create(text: 'Oil', correct: false, question_id: 2)
Answer.create(text: 'Animal', correct: false, question_id: 2)
Answer.create(text: 'Ruby on Rails framework', correct: true, question_id: 2)

Answer.create(text: 'Machine', correct: false, question_id: 3)
Answer.create(text: 'Weapon', correct: false, question_id: 3)
Answer.create(text: 'Programming language', correct: true, question_id: 3)

User.create(name: 'Rob', login: 'rob', role: 1)
User.create(name: 'Bob', login: 'bob', role: 1)
User.create(name: 'John', login: 'john01', role: 1)
User.create(name: 'Admin', login: 'admin', role: 0)

UsersHistory.create(user_id: 1, test_id: 1, passed: true)
UsersHistory.create(user_id: 1, test_id: 2, passed: false)
UsersHistory.create(user_id: 1, test_id: 3, passed: false)
UsersHistory.create(user_id: 1, test_id: 5, passed: false)
UsersHistory.create(user_id: 1, test_id: 6, passed: false)
UsersHistory.create(user_id: 1, test_id: 7, passed: false)
