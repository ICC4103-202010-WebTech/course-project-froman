class OrganizationRolesController < ApplicationController
  before_action :set_organization_role, only: [:show, :edit, :update, :destroy]

  # GET /organization_roles
  # GET /organization_roles.json
  def index
    @organization_roles = OrganizationRole.includes(:user, :organization).where(user_id: params[:user_id])
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

    respond_to do |format|
      if @organization_role.save
        format.html { redirect_to @organization_role, notice: 'Organization role was successfully created.' }
        format.json { render :show, status: :created, location: @organization_role }
      else
        format.html { render :new }
        format.json { render json: @organization_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_roles/1
  # PATCH/PUT /organization_roles/1.json
  def update
    respond_to do |format|
      if @organization_role.update(organization_role_params)
        format.html { redirect_to @organization_role, notice: 'Organization role was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_role }
      else
        format.html { render :edit }
        format.json { render json: @organization_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_roles/1
  # DELETE /organization_roles/1.json
  def destroy
    @organization_role.destroy
    respond_to do |format|
      format.html { redirect_to organization_roles_url, notice: 'Organization role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_role
      @organization_role = OrganizationRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_role_params
      params.fetch(:organization_role, {})
    end
end
