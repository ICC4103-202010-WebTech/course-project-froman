class SearchUsersController < ApplicationController
  def search
    @users = User.where("username LIKE ? or name LIKE ? or lastName LIKE ?",
                          "%#{User.sanitize_sql_like(params[:q])}%",
                          "%#{User.sanitize_sql_like(params[:q])}%",
                          "%#{User.sanitize_sql_like(params[:q])}%")

    logger.debug(render_to_string layout: "search")
    render layout: "search"
  end
end
