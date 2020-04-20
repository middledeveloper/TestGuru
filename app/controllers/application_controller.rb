# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :user_name_params, if: :devise_controller?

  private

  def after_sign_in_path_for(user)
    flash[:notice] = "Hello, #{user.first_name} #{user.last_name}!"

    if user.is_a?(Admin)
      admin_tests_path
    else
      tests_path
    end
  end

  def user_name_params
    devise_parameter_sanitizer.permit(:login, keys: %i[first_name last_name])
  end
end
