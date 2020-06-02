class PagesController < ApplicationController
  def home
    @events = Event.includes(:invitations).where(invitations: {user_id: @current_user.id}).order(date: :asc)
  end
end

