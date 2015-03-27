class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]
	layout 'vendor_portal_null'
	
	#for authentication
	before_filter :authenticate_user!

	#for checking user roles
	#before_filter :allowedusers_only
  # GET /samples
  # GET /samples.json
  def index
   	@samples = Sample.all('trackingsheet'=>params[:trackingsheet_id])
		@sample = Sample.new
  end
	#Allow only permitted users
	def allowedusers_only
 
		allowed_users=[VendorPortal::Application.config.admin.to_s,VendorPortal::Application.config.operationadmin.to_s,VendorPortal::Application.config.operationuser.to_s,VendorPortal::Application.config.vendor.to_s]
	
    if !current_user.userrole.in?(allowed_users)
      redirect_to root_path, :alert => "Access denied."
    end
  end
  # GET /samples/1
  # GET /samples/1.json
  def show
  end

  # GET /samples/new
  def new
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
  end

  # POST /samples
  # POST /samples.json
  def create
    @sample = Sample.new(sample_params)

    respond_to do |format|
      if @sample.save
        format.html { redirect_to @sample, notice: 'Sample was successfully created.' }
        format.json { render :show, status: :created, location: @sample }
      else
        format.html { render :new }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end
	def ajaxcreate_samples
    
		if params.has_key?('sampleid')
			if 	params[:approved]=='yes'
					@sample=Sample.find(params[:sampleid])
					@sample.update(:approved=>params[:approved])	
			else
				
				@sample=Sample.find(params[:sampleid])
				@sample.update(:approved=>params[:approved])	
				@sample = Sample.new(:trackingsheet=>params[:trackingsheet])

			end
		else
		
		@sample = Sample.new(:trackingsheet=>params[:trackingsheet])

		end
    respond_to do |format|
      if @sample.save
        format.html { redirect_to samples_path+"?".to_s+"trackingsheet_id=".to_s+params[:trackingsheet], notice: 'Sample was successfully created.' }
        format.json { render :show, status: :created, location: @sample }
      end
    end
  end
  # PATCH/PUT /samples/1
  # PATCH/PUT /samples/1.json
  def update
    respond_to do |format|
      if @sample.update(sample_params)
        format.html { redirect_to @sample, notice: 'Sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample }
      else
        format.html { render :edit }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samples/1
  # DELETE /samples/1.json
  def destroy
    @sample.destroy
    respond_to do |format|
      format.html { redirect_to samples_url, notice: 'Sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample
      @sample = Sample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_params
      params.require(:sample).permit(:soss,:trackingsheet, :nmbrofdefsmplneeded, :dafissued, :sampleduedate, :xmill, :received, :approved)
    end
end
