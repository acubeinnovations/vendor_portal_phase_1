class TrackingsheetsController < ApplicationController
  respond_to :html, :json #newly added for in_place_edit
	layout 'vendor_portal'
  before_action :set_trackingsheet, only: [:show, :edit, :update, :destroy]
	
	#for authentication
	before_filter :authenticate_user!	

  # GET /trackingsheets
  # GET /trackingsheets.json
  def index

	if !params[:processmaster_id].blank?
    @processmaster_id=params[:processmaster_id]
  else
    @processmaster_id=BSON::ObjectId.from_string(request.GET.first.second.to_s)
  end
		  @trackingsheets = Trackingsheet.search(params[:searchterm]).where('processmaster_id'=>BSON::ObjectId.from_string(@processmaster_id)).order('id asc').paginate(:page => params[:page], :per_page =>20)
      
		if !params[:page].blank?
			@slno=((params[:page].to_i - 1) * 20) + 1
		else
			@slno=1
		end
    
 
  
  
  
      
    
    if request.GET.length==0
      redirect_to processmasters_path
    end
    #@trackingsheets = Trackingsheet.all
    #trackingsheets =  Trackingsheet.find(params[:processmaster_id]) 
		#redirect_to processmasters_path
  end

  # GET /trackingsheets/1
  # GET /trackingsheets/1.json
  def show
  end

  # GET /trackingsheets/new
  def new
    @trackingsheet = Trackingsheet.new
		#redirect_to processmasters_path
  end

  # GET /trackingsheets/1/edit
  def edit
  end

  # POST /trackingsheets
  # POST /trackingsheets.json
  def create
    @trackingsheet = Trackingsheet.new(trackingsheet_params)

    respond_to do |format|
      if @trackingsheet.save
        format.html { redirect_to @trackingsheet, notice: 'Trackingsheet was successfully created.' }
        format.json { render :show, status: :created, location: @trackingsheet }
      else
        format.html { render :new }
        format.json { render json: @trackingsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackingsheets/1
  # PATCH/PUT /trackingsheets/1.json
  
  
  
  def update
		@trackingsheet = Trackingsheet.find(params[:id])
        if trackingsheet_params.has_key?("vendorfulldata")
          if !trackingsheet_params[:vendorfulldata].blank?

            email = trackingsheet_params[:vendorfulldata].to_s
            index = email.rindex('(')
            @trackingsheet.vendor = email[index.to_i+1..-2]
      
          end
        end
        
        
       
        
        
        
        @trackingsheet.update_attributes(trackingsheet_params) #newly added for in_place_edit #newly added for in_place_edit
    
   @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>params[:id],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.main) 
   @commentlog=Commentlog.where('trackingsheet_id'=>params[:id],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.main) 
   
if    @trackingsheetlog.count== 0
  
  
     
      @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>params[:id],"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.main)
       @trackingsheetlog.save
       
       
       

       
       
else
  
 @trackingsheetlog.each do |tslog|
  
      @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
      @trackingsheetlogobj.update_attributes(:trackingsheet_id=>params[:id],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.main)
      break
  end    
      
      
end      

### --------------------------------- newly added
    
    
   @commentlog=Commentlog.where('trackingsheet_id'=>params[:id],"sessionid"=>session[:session_id]) 
   if trackingsheet_params.has_key?('comments')
   
if    @commentlog.count== 0
  
  
     
      @commentlog = Commentlog.new("trackingsheet_id"=>params[:id],"useremail"=>current_user.email,"sessionid"=>session[:session_id],:comments=>@trackingsheet.comments)
       @commentlog.save
       
       
       

       
       
else
  
 @commentlog.each do |tslog|
  
      @commentlogobj=Commentlog.find(tslog.id)
      @commentlogobj.update_attributes(:trackingsheet_id=>params[:id],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:comments=>@trackingsheet.comments)
      break
  end    
    end  
      
end  
### ---------------------------------------  newly added ends

 

    
    
   
    
    respond_with @trackingsheet #newly added for in_place_edit #newly added for in_place_edit
    
    
    
#    respond_to do |format|
#      if @trackingsheet.update(trackingsheet_params)
#        format.html { redirect_to processmasters_path, notice: 'Trackingsheet was successfully updated.' }
#        format.json { render :show, status: :ok, location: @trackingsheet }
#      else
#        format.html { render :edit }
#        format.json { render json: @trackingsheet.errors, status: :unprocessable_entity }
#      end
#    end
  end

	# xls convertion
	
	def tocsv
		
		
		@trackingsheets = Trackingsheet.where(:id=>request.GET.first.second)
    #respond_to do |format|
      #format.html
      #format.csv { send_data @trackingsheets.to_csv }
      #format.xlsx { send_data @trackingsheets.to_csv(col_sep: "\t") }
    #end
	end
  
    


	def lockme
		
    @trackingsheet = Trackingsheet.find(params[:trackingsheet_id])

		@trackingsheet.update_attributes(:lock=>params[:lock])
		render :text => true
  end
	# DELETE /trackingsheets/1
  # DELETE /trackingsheets/1.json
  def destroy
    @trackingsheet.destroy
    respond_to do |format|
      format.html { redirect_to trackingsheets_url, notice: 'Trackingsheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
	def get_history
			@historylogs = Trackingsheetlog.order("id DESC").where('trackingsheet_id'=>params[:trackingsheetid])
			#render json: Hash[@historylogs.map { |v| [ v[:updated_at].strftime("%m-%d-%y %H:%M"), v[:useremail].to_s ], v[:tabname].to_s ] } ]
      render json: @historylogs
	end
  
	def get_comments
			@commentlogs = Commentlog.order("id DESC").where('trackingsheet_id'=>params[:trackingsheetid])
			render json: @commentlogs
	end
  
  
	def vendor_versions
			@vendorversions = Trackingsheet.find(params[:tsid]).versions
			respond_to do |format|
				format.html 
		 		format.js
		  end
	end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackingsheet
      @trackingsheet = Trackingsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackingsheet_params
      params.require(:trackingsheet).permit(:lock,:images,:factory,:subcontractor,:xmilldate, :productionleadtime,:salesproceedtosamplerequest, :protoduebackfromvendor,
      :daftovendordate, :rtlmu, :mkup, :projectedunits, :targetfob, :targetmu, :targetws, :percolor, :perstyle, :incoterms, :moq,:vendorfulldata,:tabname,
      :thousandtofivethousandPCS, :fivethousandtotenthousandPCS, :ldpboat, :ldpair, :startshipdate, :orderduedateviaboat, :orderduedateviaair,
      :soss, :nmbrofdefsmplneeded, :dafissued, :sampleduedate, :daf2soss, :daf2nmbrofdefsmplneeded, :daf2dafissued, :daf2sampleduedate,:processmaster_id,:comments,
      :useremail, :vendor, :brand, :customername, :customeraccountnumber, :projectnumber, :customerstylenumber, :groupname, :productcategory, :designname,
       :shape, :size, :fiber, :construction, :fabrictype, :gauge_end, :finish, :finishdetails, :colors, :hw_logo_trim, :components, :targetretailus,
        :targetretailcan, :pricebasedonprojection, :additionalsurcharge, :tenthousandtotwentythousandPCS, :twentythousandplusPCS, :xmill, :received,
         :approved, :daf2xmill, :daf2received, :daf2approved, :vsdsreceived, :vsdsapproved, :proto_daf_number).merge(user: current_user)
    end
end
