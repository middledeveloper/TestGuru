# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users

  def history(test_level)
    Test
      .joins('JOIN users_histories ON test_id = tests.id')
      .where(level: test_level)
      .where(users_histories: { user_id: id })
  end
end
