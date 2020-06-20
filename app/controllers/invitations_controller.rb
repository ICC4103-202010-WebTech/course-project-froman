class InvitationsController < ApplicationController
  before_action :set_invitation, only: [:show, :edit, :update, :destroy]

  # GET /invitations
  # GET /invitations.json
  def index
    x = current_user.id
    @invitations = Invitation.includes(:user, :event).where(user_id: x, host: 0)
  end

  # GET /invitations/1
  # GET /invitations/1.json
  def show
  end

  # GET /invitations/new
  def new
    @event = Event.find(params[:event_id])
    @invitation = Invitation.new
    @invitation.event = @event
  end

  # GET /invitations/1/edit
  def edit
  end

  # POST /invitations
  # POST /invitations.json
  def create
    @event = Event.find(params[:event_id])
    @invitation = Invitation.new(invitation_params)
    @invitation.event = @event

    respond_to do |format|
      if @invitation.save
        format.html { redirect_to @event, notice: 'Invitation was successfully created.' }
        format.json { render :show, status: :created, location: @invitation }
      else
        format.html { render :new }
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invitations/1
  # PATCH/PUT /invitations/1.json
  def update
    respond_to do |format|
      if @invitation.update(invitation_params)
        format.html { redirect_to @invitation, notice: 'Invitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @invitation }
      else
        format.html { render :edit }
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invitations/1
  # DELETE /invitations/1.json
  def destroy
    @invitation.destroy
    respond_to do |format|
      format.html { redirect_to user_events_path(@current_user.id), notice: 'Invitation was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invitation_params
      params.fetch(:invitation, {}).permit(:id, :host, :event, :user, :event_id, :user_id)
    end
end
