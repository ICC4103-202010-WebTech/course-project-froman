class ApplicationController < ActionController::Base
  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find(6)
  end
end
