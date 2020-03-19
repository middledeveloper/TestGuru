# frozen_string_literal: true

class QuestionsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  before_action :define_test, only: %i[index new create]
  before_action :define_question, only: %i[show edit update destroy]

  def new
    @question = @test.questions.new
  end

  def show
    @answers = @question.answers
  end

  def edit; end

  def create
    question = @test.questions.new(question_params)

    if question.save
      redirect_to test_path(question.test_id)
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to test_path(@question.test_id)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to test_path(@question.test_id)
  end

  private

  def define_test
    @test = Test.find(params[:test_id])
  end

  def define_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:text)
  end

  def rescue_with_question_not_found
    render plain: "Question id:#{params[:id]} not exist!", status: 404
  end
end
