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
    @processmasters = Processmaster.all
  end

  # GET /processmasters/1
  # GET /processmasters/1.json
  def show
  end

  # GET /processmasters/new
  def new
    @processmaster = Processmaster.new
  end

  # GET /processmasters/1/edit
  def edit
  end

  # POST /processmasters
  # POST /processmasters.json
  def create
    @processmaster = Processmaster.new(processmaster_params)
		@style = Style.find(processmaster_params['referencestyle'])
		@processmaster.stylename = @style.stylename
		@processmaster.stylecode = @style.stylecode
    
    @processmaster.division = @style.division
    @processmaster.brand = @style.brand
    @processmaster.market = @style.market
    
    
		@processmaster.image = @style.image
		@processmaster.user_ids = @style.user_ids
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
		@processmaster.users.clear
    respond_to do |format|
      if @processmaster.update_attributes(processmaster_update_params)
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
    if current_user.userrole=='admin' || current_user.userrole=='operations'
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
      params.require(:processmaster).permit(:season,:year,:customername,:customeraccount,:project,:referencestyle)
    end
		def processmaster_update_params
      params.require(:processmaster).permit(:division,:brand,:season,:year,:market,:customername,:customeraccount,:project,:referencestyle,:stylename,:stylecode,:image,{ :user_ids => [] })
    end
end
