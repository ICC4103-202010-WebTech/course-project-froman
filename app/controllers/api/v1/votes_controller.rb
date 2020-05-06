class API::V1::VotesController < APIController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new(vote_params)
    @vote.event = Event.find(params[:event_id])
    @vote.invitation = Invitation.find(params[:invitation_id])

    respond_to do |format|
      if @vote.save
        render :show, status: :created, location: @vote
      else
        render json: @vote.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        render :show, status: :ok, location: api_v1_user_invitation_votes_path(@vote)
      else
        render json: @vote.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vote_params
      params.fetch(:vote, {}).permit(:id, :event_id, :invitation_id)
    end
end
