# frozen_string_literal: true

module TestsHelper
  def questions_count(test)
    test.questions.count
  end
end
