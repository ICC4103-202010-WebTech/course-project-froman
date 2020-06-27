class SearchEventsController < ApplicationController
  def search_events
    @events = Event.where("name LIKE ? ",
                        "%#{Event.sanitize_sql_like(params[:q])}%")

    logger.debug(render_to_string layout: "search_events")
    render layout: "search_events"
  end
end
