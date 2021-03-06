class TrackingsheetimagesController < ApplicationController
  before_action :set_trackingsheetimage, only: [:show, :edit, :update, :destroy]
	layout 'vendor_portal_null'

	#for authentication
	before_filter :authenticate_user!

  # GET /trackingsheetimages
  # GET /trackingsheetimages.json
  def index
    @trackingsheetimages = Trackingsheetimage.all('trackingsheet_id'=>params[:trackingsheetid]) 
		@trackingsheetimage = Trackingsheetimage.new
  end

  # GET /trackingsheetimages/1
  # GET /trackingsheetimages/1.json
  def show
  end

  # GET /trackingsheetimages/new
  def new
    @trackingsheetimage = Trackingsheetimage.new
  end

  # GET /trackingsheetimages/1/edit
  def edit
  end

  # POST /trackingsheetimages
  # POST /trackingsheetimages.json
  def create
    @trackingsheetimage = Trackingsheetimage.new(trackingsheetimage_params)

    respond_to do |format|
      if @trackingsheetimage.save
        ###### new starts
        @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>trackingsheetimage_params[:trackingsheet],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.image) 
   
   
     if @trackingsheetlog.count== 0
       @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>trackingsheetimage_params[:trackingsheet],"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.image)
      @trackingsheetlog.save
    else
     @trackingsheetlog.each do |tslog|
     @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
     @trackingsheetlogobj.update_attributes(:trackingsheet_id=>trackingsheetimage_params[:trackingsheet],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.image)
    break
       end    
      
     end     
    
        ##### new ends
    
        render :text => true
        return false
        #format.html { redirect_to @trackingsheetimage, notice: 'Trackingsheetimage was successfully created.' }
        #format.json { render :show, status: :created, location: @trackingsheetimage }
      else
        render :text => true
        return false
        #format.html { render :new }
        #format.json { render json: @trackingsheetimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackingsheetimages/1
  # PATCH/PUT /trackingsheetimages/1.json
  def update
    respond_to do |format|
      if @trackingsheetimage.update(trackingsheetimage_params)
        #format.html { redirect_to @trackingsheetimage, notice: 'Trackingsheetimage was successfully updated.' }
       # format.json { render :show, status: :ok, location: @trackingsheetimage }
      else
       # format.html { render :edit }
       # format.json { render json: @trackingsheetimage.errors, status: :unprocessable_entity }
      end
    end
    
    
    
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>trackingsheetimage_params[:id],"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.image) 
   
   
 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>trackingsheetimage_params[:id],"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.image)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>trackingsheetimage_params[:id],:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.image)
break
   end    
      
 end     
    
    ##### new ends
    
    
    
  end

  # DELETE /trackingsheetimages/1
  # DELETE /trackingsheetimages/1.json
  def destroy
    @processmaster_id=@trackingsheetimage.trackingsheet.processmaster.id
    @trackingsheetimage.destroy
    respond_to do |format|
      format.html { redirect_to trackingsheets_url+"?processmaster_id="+@processmaster_id, notice: 'Image was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  
  def deletetsimg
    @trackingsheetimage = Trackingsheetimage.find(params[:tsimgid])
    @tsid=@trackingsheetimage.trackingsheet.id
    @trackingsheetimage.destroy
    ###### new starts
    @trackingsheetlog=Trackingsheetlog.where('trackingsheet_id'=>@tsid,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.image) 


 if @trackingsheetlog.count== 0
   @trackingsheetlog = Trackingsheetlog.new("trackingsheet_id"=>@tsid,"useremail"=>current_user.email,"sessionid"=>session[:session_id],"tabname"=>VendorPortal::Application.config.image)
  @trackingsheetlog.save
else
 @trackingsheetlog.each do |tslog|
 @trackingsheetlogobj=Trackingsheetlog.find(tslog.id)
 @trackingsheetlogobj.update_attributes(:trackingsheet_id=>@tsid,:useremail=>current_user.email,:sessionid=>session[:session_id],:updated_at=>DateTime.now,:tabname=>VendorPortal::Application.config.image)
break
   end    
  
 end     

    ##### new ends
    render :text=>true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackingsheetimage
      @trackingsheetimage = Trackingsheetimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackingsheetimage_params

      params.require(:trackingsheetimage).permit(:image, :description,:trackingsheet).merge(:user=>current_user)
    end
end
