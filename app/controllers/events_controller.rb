class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    x = current_user.id
    @moderator = OrganizationRole.where(user_id: x, role: 1).pluck("organization_id")
    orgs = OrganizationRole.where(user_id: x, role: 1).pluck("organization_id")
    if orgs.count > 0
      @events = []
      for i in orgs
        for j in Event.where(creator_id: i)
          @events << j
        end
      end
      for y in Event.where(creator_id: x, creator_type: "User")
        @events << y
      end
    else
      @events = Event.where(creator_id: x, creator_type: "User")
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.where(id: params[:id])
    @votes_title = Vote.where(event_id: params[:id]).limit(1)
    @votes = Vote.where(event_id: params[:id])
    @guests = Invitation.where(event_id: params[:id])
    @comments = User.select('users.username, users.id, comments.content, comments.id as comment_id').joins(invitations: :comments).where(invitations: { event_id: params[:id] })
  end

  # GET /events/new
  def new
    @event = Event.new

  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)


    respond_to do |format|
      if @event.save

        @new_event_creator = Invitation.new
        @new_event_creator.user = @current_user
        @new_event_creator.event = @event
        @new_event_creator.host = 1
        if  @new_event_creator.errors.blank?
          @new_event_creator.save
        end

        format.html { redirect_to user_events_path(@current_user.id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to user_events_path(@current_user.id), notice: 'Event was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.fetch(:event, {}).permit(:id, :name, :description, :date, :privacy, :image, :creator_type, :creator_id, :location)
    end
end
