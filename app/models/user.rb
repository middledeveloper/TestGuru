# frozen_string_literal: true

class User < ApplicationRecord
  has_many :author_tests, class_name: 'Test', foreign_key: 'author_id'

  has_many :test_passages
  has_many :tests, through: :test_passages

  scope :history, ->(user, level) { user.tests.where(level: level) }

  validates :name, presence: true
  validates :login, presence: true
  validates :email, presence: true

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  # def history(test_level)
  # tests.where(level: test_level)

  ## Test
  ##  .joins('JOIN users_histories ON test_id = tests.id')
  ##  .where(level: test_level)
  ##  .where(users_histories: { user_id: id })
  # end
end
