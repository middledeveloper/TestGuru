# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Rob', login: 'rob', role: 1)
User.create(name: 'Bob', login: 'bob', role: 1)
User.create(name: 'John', login: 'john01', role: 1)
User.create(name: 'Admin', login: 'admin', role: 0)

Category.create(title: 'Backend')
Category.create(title: 'Frontend')
Category.create(title: 'Others')

Test.create(title: 'Ruby', level: 1, category_id: Category.find_by_title('Frontend').id, author_id: User.find_by_name('Bob').id)
Test.create(title: 'Rails', level: 2, category_id: Category.find_by_title('Frontend').id, author_id: User.find_by_name('Rob').id)
Test.create(title: 'C#', level: 0, category_id: Category.find_by_title('Frontend').id, author_id: User.find_by_name('Bob').id)
Test.create(title: '.Net Core', level: 1, category_id: Category.find_by_title('Frontend').id, author_id: User.find_by_name('Rob').id)
Test.create(title: 'JavaScript', level: 0, category_id: Category.find_by_title('Backend').id, author_id: User.find_by_name('Bob').id)
Test.create(title: 'React', level: 1, category_id: Category.find_by_title('Backend').id, author_id: User.find_by_name('Rob').id)
Test.create(title: 'Angular', level: 1, category_id: Category.find_by_title('Backend').id, author_id: User.find_by_name('Bob').id)

Question.create(text: 'What is Ruby?', number: 1, test_id: Test.find_by_title('Ruby').id)
Question.create(text: 'What means == ?', number: 2, test_id: Test.find_by_title('Ruby').id)
Question.create(text: 'What is Rails?', number: 1, test_id: Test.find_by_title('Rails').id)
Question.create(text: 'What means to_s ?', number: 2, test_id: Test.find_by_title('Rails').id)
Question.create(text: 'What is C#?', number: 1, test_id: Test.find_by_title('C#').id)
Question.create(text: 'What is ternary operator', number: 2, test_id: Test.find_by_title('C#').id)

Answer.create(text: 'Fish', correct: false, question_id: Question.find_by_text('What is Ruby?').id)
Answer.create(text: 'Fruit', correct: false, question_id: Question.find_by_text('What is Ruby?').id)
Answer.create(text: 'Programming language', correct: true, question_id: Question.find_by_text('What is Ruby?').id)

Answer.create(text: 'Oil', correct: false, question_id: Question.find_by_text('What is Rails?').id)
Answer.create(text: 'Animal', correct: false, question_id: Question.find_by_text('What is Rails?').id)
Answer.create(text: 'Ruby on Rails framework', correct: true, question_id: Question.find_by_text('What is Rails?').id)

Answer.create(text: 'Machine', correct: false, question_id: Question.find_by_text('What is C#?').id)
Answer.create(text: 'Weapon', correct: false, question_id: Question.find_by_text('What is C#?').id)
Answer.create(text: 'Programming language', correct: true, question_id: Question.find_by_text('What is C#?').id)

TestsUser.create(user_id: User.find_by_name('Bob').id, test_id: Test.find_by_title('Ruby').id, progress: 100)
TestsUser.create(user_id: User.find_by_name('Bob').id, test_id: Test.find_by_title('C#').id, progress: 25)
TestsUser.create(user_id: User.find_by_name('Bob').id, test_id: Test.find_by_title('Rails').id, progress: 40)
TestsUser.create(user_id: User.find_by_name('Rob').id, test_id: Test.find_by_title('Ruby').id, progress: 17)
TestsUser.create(user_id: User.find_by_name('Rob').id, test_id: Test.find_by_title('Rails').id, progress: 71)
TestsUser.create(user_id: User.find_by_name('Rob').id, test_id: Test.find_by_title('C#').id, progress: 16)
