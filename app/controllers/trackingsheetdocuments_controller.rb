class TrackingsheetdocumentsController < ApplicationController
  before_action :set_trackingsheetdocument, only: [:show, :edit, :update, :destroy]
	layout 'vendor_portal_null'

	#for authentication
	before_filter :authenticate_user!

  # GET /trackingsheetdocuments
  # GET /trackingsheetdocuments.json
  def index
    @trackingsheetdocuments = Trackingsheetdocument.all('trackingsheet_id'=>params[:trackingsheetid]) 
	  @trackingsheetdocument = Trackingsheetdocument.new
  end

  # GET /trackingsheetdocuments/1
  # GET /trackingsheetdocuments/1.json
  def show
  end

  # GET /trackingsheetdocuments/new
  def new
    @trackingsheetdocument = Trackingsheetdocument.new
  end

  # GET /trackingsheetdocuments/1/edit
  def edit
  end

  # POST /trackingsheetdocuments
  # POST /trackingsheetdocuments.json
  def create
    @trackingsheetdocument = Trackingsheetdocument.new(trackingsheetdocument_params)

    respond_to do |format|
      if @trackingsheetdocument.save
       # format.html { redirect_to @trackingsheetdocument, notice: 'Trackingsheetdocument was successfully created.' }
        #format.json { render :show, status: :created, location: @trackingsheetdocument }
        ###### new starts
        @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>trackingsheetdocument_params[:trackingsheet],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.documents) 
   
   
     if @trackingsheetlog.count== 0
       @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>trackingsheetdocument_params[:trackingsheet],"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.documents)
      @trackingsheetlog.save
    else
     @trackingsheetlog.each do |tslog|
     @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
     @trackingsheetlogobj.update_attributes(:trackingsheet_id=>trackingsheetdocument_params[:trackingsheet],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.documents)
    break
       end    
      
     end     
    
        ##### new ends
      else
        #format.html { render :new }
       # format.json { render json: @trackingsheetdocument.errors, status: :unprocessable_entity }
      end
      render :text=>true
      return false
    end
    
  end

  # PATCH/PUT /trackingsheetdocuments/1
  # PATCH/PUT /trackingsheetdocuments/1.json
  def update
    respond_to do |format|
      if @trackingsheetdocument.update(trackingsheetdocument_params)
        #format.html { redirect_to @trackingsheetdocument, notice: 'Trackingsheetdocument was successfully updated.' }
        #format.json { render :show, status: :ok, location: @trackingsheetdocument }
        ###### new starts
        @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>@trackingsheetdocument.trackingsheet.id,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.documents) 
   
   
     if @trackingsheetlog.count== 0
       @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>@trackingsheetdocument.trackingsheet.id,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.documents)
      @trackingsheetlog.save
    else
     @trackingsheetlog.each do |tslog|
     @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
     @trackingsheetlogobj.update_attributes(:trackingsheet_id=>@trackingsheetdocument.trackingsheet.id,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.documents)
    break
       end    
      
     end     
    
        ##### new ends 
      else
        #format.html { render :edit }
        #format.json { render json: @trackingsheetdocument.errors, status: :unprocessable_entity }
      end
      render :text=>true
      return false
    end
    
      
  end

  # DELETE /trackingsheetdocuments/1
  # DELETE /trackingsheetdocuments/1.json
  def destroy
    @processmaster_id=@trackingsheetdocument.trackingsheet.processmaster.id
    @trackingsheetdocument.destroy
   respond_to do |format|
      format.html { redirect_to trackingsheets_url+"?processmaster_id="+@processmaster_id, notice: 'Document was successfully deleted.' }
      #format.html { redirect_to trackingsheetdocuments_url, notice: 'Trackingsheetdocument was successfully destroyed.' }
      format.json { head :no_content }
   end
  end
  
  def deletetsdoc
    @trackingsheetdocument = Trackingsheetdocument.find(params[:tsdocid])
    @tsid=@trackingsheetdocument.trackingsheet.id
    @trackingsheetdocument.destroy
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=> @tsid,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.documents) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=> @tsid,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.documents)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=> @tsid,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.documents)
break
   end    
      
 end     
    
    ##### new ends  
    render :text=>true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackingsheetdocument
      @trackingsheetdocument = Trackingsheetdocument.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackingsheetdocument_params
      params.require(:trackingsheetdocument).permit(:document, :description,:trackingsheet,:processmaster).merge(:user=>current_user)
    end
end
