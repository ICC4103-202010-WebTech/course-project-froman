class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_last_seen_at, if: proc { user_signed_in? }


  protected

  def current_customer
    if current_user
      current_user
    else
      User.new
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastName, :username ])
  end

  private
  def set_last_seen_at
    current_user.update_attribute(:lastAccess, Time.current)
  end

end
