# frozen_string_literal: true

module QuestionsHelper
  def question_header(action_name, test_title)
    "#{action_name} '#{test_title}' test Question"
  end
end
