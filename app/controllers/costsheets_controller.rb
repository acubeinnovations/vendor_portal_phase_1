class CostsheetsController < ApplicationController
	layout 'vendor_portal_null'
	
	#for authentication
	before_filter :authenticate_user!

	#for checking user permisions
	#before_filter :allowedusers_only
 
  before_action :set_costsheet, only: [:show, :edit, :update, :destroy]

  # GET /costsheets
  # GET /costsheets.json
  def index
    @costsheets = Costsheet.all('trackingsheet'=>params[:trackingsheet_id])
  end

	#Allow only permitted users
	def allowedusers_only
 
		allowed_users=[VendorPortal::Application.config.operationadmin.to_s,VendorPortal::Application.config.operationuser.to_s,VendorPortal::Application.config.vendor.to_s]
	
    if !current_user.userrole.in?(allowed_users)
      redirect_to root_path, :alert => "Access denied."
    end
  end

  # GET /costsheets/1
  # GET /costsheets/1.json
  def show
  end

  # GET /costsheets/new
  def new
    @costsheet = Costsheet.new
  end

  # GET /costsheets/1/edit
  def edit
  end

  # POST /costsheets
  # POST /costsheets.json
  def create
    @costsheet = Costsheet.new(costsheet_params)

    respond_to do |format|
      if @costsheet.save
        format.html { redirect_to @costsheet, notice: 'Costsheet was successfully created.' }
        format.json { render :show, status: :created, location: @costsheet }
      else
        format.html { render :new }
        format.json { render json: @costsheet.errors, status: :unprocessable_entity }
      end
    end
  end

	def ajaxcreate_costsheets
    @costsheet = Costsheet.new(:trackingsheet=>params[:trackingsheet])

    respond_to do |format|
      if @costsheet.save
        format.html { redirect_to costsheets_path+"?".to_s+"trackingsheet_id=".to_s+params[:trackingsheet], notice: 'Costsheet was successfully created.' }
        format.json { render :show, status: :created, location: @costsheet }
      end
    end
  end


  # PATCH/PUT /costsheets/1
  # PATCH/PUT /costsheets/1.json
  def update
    respond_to do |format|
      if @costsheet.update(costsheet_params)
        format.html { redirect_to @costsheet, notice: 'Costsheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @costsheet }
      else
        format.html { render :edit }
        format.json { render json: @costsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costsheets/1
  # DELETE /costsheets/1.json
  def destroy
    @costsheet.destroy
    respond_to do |format|
      format.html { redirect_to costsheets_url, notice: 'Costsheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costsheet
      @costsheet = Costsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costsheet_params
      params.require(:costsheet).permit(:screencount, :firstcost, :duty, :freight, :insurance, :commision, :misc, :designcharges, :croquisnonduty, :screens, :soffs, :trackingsheet,:testing, :qa, :componentsstring, :ldp, :retail, :comments)
    end
end
