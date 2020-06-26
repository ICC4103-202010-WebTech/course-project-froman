class SearchOrganizationsController < ApplicationController
  def search_organizations
    @organizations = Organization.where("name LIKE ?",
                        "%#{Organization.sanitize_sql_like(params[:q])}%")

    logger.debug(render_to_string layout: "search_organizations")
    render layout: "search_organizations"
  end
end
