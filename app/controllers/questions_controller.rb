# frozen_string_literal: true

class QuestionsController < ApplicationController
  rescue_from RecordNotFound, with: :rescue_with_question_not_found

  def index
    render plain: @test.questions.inspect
  end

  def destroy
    @question.destroy
    render plain: "Question id:#{params[:id]} deleted!"
  end

  private

  def rescue_with_question_not_found
    render plain: "Question id:#{params[:id]} not exist!",
           status: 404
  end

  def define_test
    @test = Test.find(params[:test_id])
  end

  def define_question
    @question = Question.find(params[:id])
  end
end
