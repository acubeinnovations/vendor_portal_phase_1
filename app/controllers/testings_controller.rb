class TestingsController < ApplicationController
	layout 'vendor_portal_null'
	
	#for authentication
	before_filter :authenticate_user!

	#for checking user roles
	#before_filter :allowedusers_only

  before_action :set_testing, only: [:show, :edit, :update, :destroy]

  # GET /testings
  # GET /testings.json
  def index
    @testings = Testing.all('trackingsheet'=>params[:trackingsheet_id])
		@testing = Testing.new
  end

	#Allow only permitted users
	def allowedusers_only
 
		allowed_users=[VendorPortal::Application.config.operationadmin.to_s,VendorPortal::Application.config.operationuser.to_s,VendorPortal::Application.config.vendor.to_s]
	
    if !current_user.userrole.in?(allowed_users)
      redirect_to root_path, :alert => "Access denied."
    end
  end

  # GET /testings/1
  # GET /testings/1.json
  def show
  end

  # GET /testings/new
  def new
    @testing = Testing.new
  end

  # GET /testings/1/edit
  def edit
  end

  # POST /testings
  # POST /testings.json
  def create
    @testing = Testing.new(testing_params)

    respond_to do |format|
      if @testing.save
        format.html { redirect_to @testing, notice: 'Testing was successfully created.' }
        format.json { render :show, status: :created, location: @testing }
      else
        format.html { render :new }
        format.json { render json: @testing.errors, status: :unprocessable_entity }
      end
    end
  end
	
	def ajaxcreate_testings
    @testing = Testing.new(:trackingsheet=>params[:trackingsheet])

    respond_to do |format|
      if @testing.save
        format.html { redirect_to testings_path+"?".to_s+"trackingsheet_id=".to_s+params[:trackingsheet], notice: 'Testing was successfully created.' }
        format.json { render :show, status: :created, location: @testing }
      end
    end
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>params[:id],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.testing) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>params[:id],"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.testing)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>params[:id],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.testing)
break
   end    
      
 end     
    
    ##### new ends
  end
  
  def deletetstst
    @testing = Testing.find(params[:tststid])
    @tsid=@testing.trackingsheet.id
    @testing.destroy
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>@tsid,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.testing) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>@tsid,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.testing)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>@tsid,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.testing)
break
   end    
      
 end     
    
    ##### new ends
    render :text=>true
  end
	
  # PATCH/PUT /testings/1
  # PATCH/PUT /testings/1.json
  def update
    respond_to do |format|
      if @testing.update(testing_params)
       # format.html { redirect_to @testing, notice: 'Testing was successfully updated.' }
        #format.json { render :show, status: :ok, location: @testing }
        @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>@testing.trackingsheet.id,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.testing) 
   

              if @trackingsheetlog.count== 0
              @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>@testing.trackingsheet.id,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.testing)
              @trackingsheetlog.save
              else
              @trackingsheetlog.each do |tslog|
              @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
              @trackingsheetlogobj.update_attributes(:trackingsheet_id=>@testing.trackingsheet.id,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.testing)
              break
              end    

              end     
    
        ##### new ends
        render :text => true
        return false
      else
       # format.html { render :edit }
        #format.json { render json: @testing.errors, status: :unprocessable_entity }
      end
    end
    ###### new starts
    
  end

  # DELETE /testings/1
  # DELETE /testings/1.json
  def destroy
    @testing.destroy
    respond_to do |format|
      format.html { redirect_to testings_url, notice: 'Testing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing
      @testing = Testing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testing_params
      params.require(:testing).permit(:requiredtests, :name, :customer, :description, :supplier, :supplierrefferenceno, :leadtime, :testdate, :results, :retestdate, :reresults, :cost, :trackingsheet)
    end
end
