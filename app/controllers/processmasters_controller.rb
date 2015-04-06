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

	  if current_user.userrole!=VendorPortal::Application.config.vendor 
		   @processmasters = Processmaster.search(params[:searchterm]).paginate(:page => params[:page], :per_page =>10)
    else
       @processmasters = Processmaster.searchforvendor(params[:searchterm]).paginate(:page => params[:page], :per_page =>10)
    end
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
		
    respond_to do |format|
      if @processmaster.save
					
					if 	!processmaster_params[:style_ids].blank?
							
					processmaster_params[:style_ids].each do |style|	
						if !style.blank?
							if Trackingsheet.where('processmaster_id'=>@processmaster.id,"style_id"=>BSON::ObjectId.from_string(style.to_s)).count== 0
						
								@trackingsheet = Trackingsheet.new("processmaster_id"=>@processmaster.id,"style_id"=>style)
								@trackingsheet.save
									
								@sample=Sample.new("trackingsheet"=>@trackingsheet.id)
								@sample.save

							end
						end
					end
				end
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
								@trackingsheet.destroy
								end	
							end
					else if !@old_styles.blank?
							#render :text => @old_styles
							#return false
							@old_styles.each do |style|
								@trackingsheet = Trackingsheet.where('processmaster_id'=>params[:id],"style_id"=>BSON::ObjectId.from_string(style.to_s))
								@trackingsheet.destroy
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
      params.require(:processmaster).permit(:name,:brand_id,:contact,:season_id,:submarket_id,:market_id,:division,{ :style_ids => [] })
    end
		def processmaster_update_params
      params.require(:processmaster).permit(:division,:brand_id,:season_id,:submarket_id,:market_id,:customername,:contact,:customeraccount,:project,:referencestyle,:stylename,:stylecode,:image,{ :user_ids => [] })
    end
end
end