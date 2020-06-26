class SearchUsersController < ApplicationController
  def search_users
    @users = User.where("username LIKE ? or name LIKE ? or lastName LIKE ?",
                          "%#{User.sanitize_sql_like(params[:q])}%",
                          "%#{User.sanitize_sql_like(params[:q])}%",
                          "%#{User.sanitize_sql_like(params[:q])}%")

    logger.debug(render_to_string layout: "search_users")
    render layout: "search_users"
  end
end
