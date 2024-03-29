class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |user|
      user.permit(:email, :first_name, :last_name, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |user|
      user.permit(:email, :first_name, :last_name, :password, :password_confirmation, :current_password, :address, :phone_number, 
        :personal_profile, :education, :technical_skills, :project_work, :professional_experience, :interests_and_achievements, :references)
    end
  end
end
