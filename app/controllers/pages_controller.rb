class PagesController < ApplicationController
  def home
    @events = []
    for j in Event.where(privacy: 0).order(date: :asc)
      @events << j
    end

    if user_signed_in?
      for j in Event.where(privacy: 1).order(date: :asc)
        @guests = Invitation.where(event_id: j.id)
        if @guests.pluck(:user_id).include? current_user.id
          @events << j
        end
      end
    end

  end
end

