# frozen_string_literal: true

class User < ApplicationRecord
  def history(test_level)
    tests_ids = UsersHistory.where(user_id: id).pluck(:test_id)
    repo = Test.where('id IN (?) AND level = ?', tests_ids, test_level)
  end
end
