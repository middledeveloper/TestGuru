# frozen_string_literal: true

class TestsController < ApplicationController
  def index
    render plain: Test.all.inspect
  end
end
