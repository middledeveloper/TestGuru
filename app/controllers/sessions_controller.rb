# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])

    # if user != nil only
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tests_path
    else
      # show flash once!
      flash.now[:alert] = 'Are you a Guru? Verify it!'
      render :new
    end
  end
end