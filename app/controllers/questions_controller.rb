# frozen_string_literal: true

class QuestionsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  before_action :define_test, only: %i[index create]
  before_action :define_question, only: %i[show destroy]

  def index
    render plain: @test.questions.inspect
  end

  def new; end

  def create
    question = @test.questions.create(question_params)
    render plain: question.inspect
  end

  def show
    render plain: @question.inspect
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

  def question_params
    params.require(:question).permit(:text)
  end
end
