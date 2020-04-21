# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :user_name_params, if: :devise_controller?

  def default_url_options
    I18n.locale == I18n.default_locale ? {} : { lang: I18n.locale }
  end

  private

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

  def after_sign_in_path_for(user)
    flash[:notice] = "#{t('.hello')}, #{user.first_name} #{user.last_name}!"

    user.admin? ? admin_tests_path : tests_path
  end

  def user_name_params
    devise_parameter_sanitizer.permit(:login, keys: %i[first_name last_name])
  end
end
