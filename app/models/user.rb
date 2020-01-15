# frozen_string_literal: true

class User < ApplicationRecord
  def history(test_level)
    Test
      .joins('JOIN users_histories ON test_id = tests.id')
      .where(level: test_level)
      .where(users_histories: { user_id: id })
  end
end
