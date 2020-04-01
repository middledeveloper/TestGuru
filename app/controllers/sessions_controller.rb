# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])

    # if user != nil only
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:info] = "Welcome back, #{user.name} Guru!"

      if !session[:request_url].nil?
        redirect_to session[:request_url]
      else
        redirect_to tests_path
      end
    else
      # show flash once!
      flash.now[:alert] = 'Are you a Guru? Verify it!'
      render :new
    end
  end

  def destroy
    reset_session
    flash[:info] = "You've logged out!"
    redirect_to signin_path
  end
end
