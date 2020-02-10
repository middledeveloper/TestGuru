# frozen_string_literal: true

class TestsController < ApplicationController
  def index
    render plain: Test.all.inspect
  end

  def show
    @test = Test.find(params[:id])
  end
end
