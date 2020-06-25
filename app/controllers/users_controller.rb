class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.where(id: params[:id])
    x = @user.pluck(:id)[0]
    @invitations = []
    if user_signed_in?
      if @user[0].id == current_user.id || admin_signed_in?
        @invitations = Invitation.includes(:user, :event).where(user_id: x, host: 0)
      else
        @invitations = Invitation.includes(:user, :event).where(user_id: x, host: 0, event: [privacy: 0])
      end
    end

    orgs = OrganizationRole.where(user_id: x, role: 1).pluck("organization_id")
    if orgs.count > 0
      @events = []
      for i in orgs
        for j in Event.where(creator_id: i, privacy: 0)
          @events << j
        end
      end
      for y in Event.where(creator_id: x, creator_type: "User", privacy: 0)
        @events << y
      end
    else
      @events = Event.where(creator_id: x, creator_type: "User", privacy: 0)
    end

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      sign_in :user, @user, bypass: true
      flash[:notice] = 'User was successfully updated.'
      redirect_to @user
    else
      redirect_to @user
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    destroy_user_session_path
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {}).permit(:name, :lastName, :biography, :profile_image, :location, :password)
    end
end
