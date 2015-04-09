class HardwaresController < ApplicationController
	layout 'vendor_portal_null'

	#for authentication
	before_filter :authenticate_user!

	#for checking user roles
	#before_filter :allowedusers_only 
	
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]

  # GET /hardwares
  # GET /hardwares.json
  def index
    @hardwares = Hardware.all('trackingsheet'=>params[:trackingsheet_id])
	  @hardware = Hardware.new
  end

	#Allow only permitted users
	def allowedusers_only
 
		allowed_users=[VendorPortal::Application.config.operationadmin.to_s,VendorPortal::Application.config.operationuser.to_s,VendorPortal::Application.config.vendor.to_s]
	
    if !current_user.userrole.in?(allowed_users)
      redirect_to root_path, :alert => "Access denied."
    end
  end

  # GET /hardwares/1
  # GET /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares
  # POST /hardwares.json
  def create
    @hardware = Hardware.new(hardware_params)

    respond_to do |format|
      if @hardware.save
        format.html { redirect_to @hardware, notice: 'Hardware was successfully created.' }
        format.json { render :show, status: :created, location: @hardware }
      else
        format.html { render :new }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

	def ajaxcreate_hardwares
    @hardware = Hardware.new(:trackingsheet=>params[:trackingsheet])

    respond_to do |format|
      if @hardware.save
        format.html { redirect_to hardwares_path+"?".to_s+"trackingsheet_id=".to_s+params[:trackingsheet], notice: 'Hardware was successfully created.' }
        format.json { render :show, status: :created, location: @hardware }
      end
    end
    
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>params[:id],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.hardware) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>params[:id],"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.hardware)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>params[:id],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.hardware)
break
   end    
      
 end     
    
    ##### new ends
    
    
    
  end
  
  def deletetshrd
    @hardware = Hardware.find(params[:tshrdid])
    @tsid=@hardware.trackingsheet.id
    @hardware.destroy
    
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>@tsid,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.hardware) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>@tsid,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.hardware)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>@tsid,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.hardware)
break
   end    
      
 end     
    
    ##### new ends   
    
    
    render :text=>true
  end

  # PATCH/PUT /hardwares/1
  # PATCH/PUT /hardwares/1.json
  def update
    respond_to do |format|
      if @hardware.update(hardware_params)
        format.html { redirect_to @hardware, notice: 'Hardware was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardware }
      else
        format.html { render :edit }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
    
    
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>@hardware.trackingsheet.id,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.hardware) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>@hardware.trackingsheet.id,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.hardware)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>@hardware.trackingsheet.id,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.hardware)
break
   end    
      
 end     
    
    ##### new ends
    
    
    
  end

  # DELETE /hardwares/1
  # DELETE /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url, notice: 'Hardware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_params
      params.require(:hardware).permit(:description,:trackingsheet, :countryoforgin, :mill, :supplier, :supplierpart, :leadtime, :unitqty, :unitprice, :totalprice)
    end
end
