# frozen_string_literal: true

class TestPassagesController < ApplicationController
  before_action :set_test_passage, only: %i[show update result]

  def show; end

  def result; end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      @test_passed_percent_value = 85
      @user_correct_answers_percent_value = calculate_percent
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  def calculate_percent
    @test_passage.questions.count
  end
end
