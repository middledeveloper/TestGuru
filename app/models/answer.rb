# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :text, presence: true

  validate :validate_max

  private

  def validate_max
    question_count = question.nil? ? 0 : question.answers.size
    if question_count >= 4
      errors.add(:Quantity, 'Question must have 4 answers max!')
    end
  end
end
