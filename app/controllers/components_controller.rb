class ComponentsController < ApplicationController
	layout 'vendor_portal_null'
	
	#for authentication
	before_filter :authenticate_user!

	#for checking user roles
	#before_filter :allowedusers_only
	
  before_action :set_component, only: [:show, :edit, :update, :destroy]
	
  # GET /components
  # GET /components.json
  def index
    @components = Component.all('trackingsheet'=>params[:trackingsheet_id])
		@component = Component.new
  end
	
	#Allow only permitted users
	def allowedusers_only
 
		allowed_users=[VendorPortal::Application.config.operationadmin.to_s,VendorPortal::Application.config.operationuser.to_s,VendorPortal::Application.config.vendor.to_s]
	
    if !current_user.userrole.in?(allowed_users)
      redirect_to root_path, :alert => "Access denied."
    end
  end
  # GET /components/1
  # GET /components/1.json
  def show
  end

  # GET /components/new
  def new
    @component = Component.new
  end

  # GET /components/1/edit
  def edit
  end

  # POST /components
  # POST /components.json
  def create
    @component = Component.new(component_params)

    respond_to do |format|
      if @component.save
        format.html { redirect_to components_path,:trackingsheet_id=>component_params[:trackingsheet], notice: 'Component was successfully created.' }
        format.json { render :show, status: :created, location: @component }
      else
        format.html { render :new }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

	def ajaxcreate_components
    @component = Component.new(:trackingsheet=>params[:trackingsheet])

    respond_to do |format|
      if @component.save
        format.html { redirect_to components_path+"?".to_s+"trackingsheet_id=".to_s+params[:trackingsheet], notice: 'Component was successfully created.' }
        format.json { render :show, status: :created, location: @component }
      end
    end
  end

  # PATCH/PUT /components/1
  # PATCH/PUT /components/1.json
  def update
    respond_to do |format|
      if @component.update(component_params)
        format.html { redirect_to @component, notice: 'Component was successfully updated.' }
        format.json { render :show, status: :ok, location: @component }
      else
        format.html { render :edit }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /components/1
  # DELETE /components/1.json
  def destroy
    @component.destroy
    respond_to do |format|
      format.html { redirect_to components_url, notice: 'Component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component
      @component = Component.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_params
      params.require(:component).permit(:fiber,:trackingsheet, :countryoforgin, :customer, :mill, :code, :hangtag2, :hangtag3, :mainlabel, :carecontentlabel, :upcsticker, :glovehanger, :hatjhook, :sizelabel)
    end
end
