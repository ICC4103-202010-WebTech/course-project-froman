class PagesController < ApplicationController
  def home
    @events = Event.includes(:invitations).where(invitations: {user_id: 3}).order(date: :asc)
  end
end

