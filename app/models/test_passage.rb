# frozen_string_literal: true

class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_first_question, on: :create
  before_validation :before_validation_set_next_question, on: :update

  TEST_PASSED_PERCENT_VALUE = 85

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids)
    save!
  end

  def passed?
    result_percent >= TEST_PASSED_PERCENT_VALUE
  end

  def expired?
    # TestPassage created + Test.timer value < current time
    (created_at + self.test.timer * 60) < Time.zone.now
  end

  def timer_seconds_left
    # returns absolute value in seconds
    (Time.zone.now - (created_at + self.test.timer * 60)).to_i.abs
  end

  def result_percent
    percent = self.correct_questions.to_f / self.test.questions.count.to_f * 100
    percent.to_i
  end

  def passage_percent
    # current question index + 1 removed due progress bar incorrect visualization
    self.test.questions.index(current_question) * 100 / self.test.questions.count
  end

  private

  def before_validation_set_first_question
    self.current_question = test.questions.first if test.present?
  end

  def before_validation_set_next_question
    self.current_question = test.questions.order(:id).where('id > ?', current_question.id).first
  end

  def correct_answer?(answer_ids)
    return false if answer_ids.nil?

    correct_answers_count = correct_answers.count

    (correct_answers_count == correct_answers.where(id: answer_ids).count) &&
      correct_answers_count == answer_ids.count
  end

  def correct_answers
    current_question.answers.correct
  end
end
