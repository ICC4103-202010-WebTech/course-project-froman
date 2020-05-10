class API::V1::OrganizationRolesController < APIController
  before_action :set_organization_role, only: [:show, :edit, :update, :destroy]

  # GET /organization_roles
  # GET /organization_roles.json
  def index
    @organization_roles = OrganizationRole.where(organization_id: params[:organization_id])
  end

  # GET /organization_roles/1
  # GET /organization_roles/1.json
  def show
  end

  # GET /organization_roles/new
  def new
    @organization_role = OrganizationRole.new
  end

  # GET /organization_roles/1/edit
  def edit
  end

  # POST /organization_roles
  # POST /organization_roles.json
  def create
    @organization_role = OrganizationRole.new(organization_role_params)
    @organization_role.user = User.find(params[:user_id])
    @organization_role.organization = Organization.find(params[:organization_id])


    if @organization_role.save
      render :show, status: :created, location: @organization_role
    else
      render json: @organization_role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organization_roles/1
  # PATCH/PUT /organization_roles/1.json
  def update
    if @organization_role.update(organization_role_params)
      render :show, status: :ok, location: api_v1_organization_organization_roles_path(@organization_role)
    else
      render json: @organization_role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organization_roles/1
  # DELETE /organization_roles/1.json
  def destroy
    @organization_role.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_role
      @organization_role = OrganizationRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_role_params
      params.fetch(:organization_role, {}).permit(:id, :user_id, :organization_id, :role)
    end
end
