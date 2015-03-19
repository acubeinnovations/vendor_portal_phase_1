class ProcessmastersController < ApplicationController
	layout 'vendor_portal'
  before_action :set_processmaster, only: [:show, :edit, :update, :destroy]
	#for authentication
	before_filter :authenticate_user!

	#for checking user roles
	before_filter :admin_only, :except =>  [:index ] 

  # GET /processmasters
  # GET /processmasters.json
  def index
    @processmasters = Processmaster.search(params[:searchterm]).paginate(:page => params[:page], :per_page =>3)
		if !params[:page].blank?
			@slno=((params[:page].to_i - 1) * 3) + 1
		else
			@slno=1
		end
  end

  # GET /processmasters/1
  # GET /processmasters/1.json
  def show
  end

  # GET /processmasters/new
  def new
    @processmaster = Processmaster.new
		@trackingsheet = Trackingsheet.new
  end

  # GET /processmasters/1/edit
  def edit
  end

  # POST /processmasters
  # POST /processmasters.json
  def create
		
    @processmaster = Processmaster.new(processmaster_params)
		#@style = Style.find(processmaster_params['referencestyle'])
		#@processmaster.stylename = @style.stylename
		#@processmaster.stylecode = @style.stylecode
    
   	#@processmaster.division = @style.division
   #@processmaster.brand = @style.brand
    #@processmaster.market = @style.market
    #@processmaster.season = @style.season
    
    
		#@processmaster.image = @style.image
		#@processmaster.user_ids = @style.user_ids
		#@processmaster.id=@processmaster.project.to_s.parameterize+Date.today.to_time.to_i.to_s
    respond_to do |format|
      if @processmaster.save
				
        format.html { redirect_to processmasters_path, notice: 'Processmaster was successfully created.' }
        format.json { render :show, status: :created, location: @processmaster }
      else
        format.html { render :new }
        format.json { render json: @processmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processmasters/1
  # PATCH/PUT /processmasters/1.json
  def update
		@processmaster = Processmaster.find(params[:id])
		@old_styles=@processmaster.styles.collect(&:id)
		@processmaster.styles.clear
    respond_to do |format|
      if @processmaster.update_attributes(processmaster_params)
					
				if 	!processmaster_params[:style_ids].blank?
							
					processmaster_params[:style_ids].each do |style|	
						if !style.blank?
							if Trackingsheet.where('processmaster_id'=>params[:id],"style_id"=>BSON::ObjectId.from_string(style.to_s)).count== 0
						
								@trackingsheet = Trackingsheet.new("processmaster_id"=>params[:id],"style_id"=>style)
								@trackingsheet.save
							end
						end
					end
						@processmaster=Processmaster.find(params[:id])
						@new_styles=@processmaster.styles.collect(&:id)
						if !@old_styles.blank?
						fordelete= @old_styles-@new_styles
							fordelete.each do |fordeletestyle|
							
								@trackingsheet = Trackingsheet.where('processmaster_id'=>params[:id],"style_id"=>BSON::ObjectId.from_string(fordeletestyle.to_s))
								@trackingsheet.delete
								end	
							end
					else if !@old_styles.blank?
							#render :text => @old_styles
							#return false
							@old_styles.each do |style|
								@trackingsheet = Trackingsheet.where('processmaster_id'=>params[:id],"style_id"=>BSON::ObjectId.from_string(style.to_s))
								@trackingsheet.delete
							end
					end
				end
        format.html { redirect_to processmasters_path, notice: 'Processmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @processmaster }
      else
        format.html { render :edit }
        format.json { render json: @processmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processmasters/1
  # DELETE /processmasters/1.json
  def destroy
    @processmaster.destroy
    respond_to do |format|
      format.html { redirect_to processmasters_url, notice: 'Processmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
	def admin_only
    if current_user.userrole==VendorPortal::Application.config.admin || current_user.userrole==VendorPortal::Application.config.operationadmin
				true
    else
				redirect_to root_path, :alert => "Access denied."
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processmaster
      @processmaster = Processmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processmaster_params
      params.require(:processmaster).permit(:name,:brand,:season,:year,:market,:division,{ :style_ids => [] })
    end
		def processmaster_update_params
      params.require(:processmaster).permit(:division,:brand,:season,:year,:market,:customername,:customeraccount,:project,:referencestyle,:stylename,:stylecode,:image,{ :user_ids => [] })
    end
end
