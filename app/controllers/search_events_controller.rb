class SearchEventsController < ApplicationController
  def search_events
    if admin_signed_in?
      @events = Event.where("name LIKE ? ",
                            "%#{Event.sanitize_sql_like(params[:q])}%")

      logger.debug(render_to_string layout: "search_events")
      render layout: "search_events"

    elsif user_signed_in?
      @all_events = Event.where("name LIKE ? ",
                            "%#{Event.sanitize_sql_like(params[:q])}%")
      @events = []
      for j in @all_events
        if j.privacy == 0
          @events << j
        end
      end
      for j in @all_events
        if j.privacy == 1
          @guests = Invitation.where(event_id: j.id)
          if @guests.pluck(:user_id).include? current_user.id
            @events << j
          end
        end
      end

      logger.debug(render_to_string layout: "search_events")
      render layout: "search_events"

    else
      @all_events = Event.where("name LIKE ? ",
                                "%#{Event.sanitize_sql_like(params[:q])}%")
      @events = []
      for j in @all_events
        if j.privacy == 0
          @events << j
        end
      end

      logger.debug(render_to_string layout: "search_events")
      render layout: "search_events"
    end
  end
end
