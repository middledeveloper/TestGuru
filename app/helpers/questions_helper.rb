# frozen_string_literal: true

module QuestionsHelper
  def question_header(question)
    "#{question.new_record? ? 'Create new' : 'Edit'} "\
      "'#{question.test.title}' test Question"
  end
end
