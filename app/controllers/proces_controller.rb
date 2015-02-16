class ProcesController < ApplicationController
  layout 'vendor_portal'
  before_action :set_proce, only: [:show, :edit, :update, :destroy]
	#for authentication
	before_filter :authenticate_user!

	#for checking user roles
	before_filter :admin_only, :except =>  [:edit ] 
  # GET /proces
  # GET /proces.json
  def index
    @proces = Proce.all
  end

  # GET /proces/1
  # GET /proces/1.json
  def show
  end

  # GET /proces/new
  def new
    @proce = Proce.new
  end

  # GET /proces/1/edit
  def edit
  end

  # POST /proces
  # POST /proces.json
  def create
    @proce = Proce.new(proce_params)

    respond_to do |format|
      if @proce.save
        format.html { redirect_to @proce, notice: 'Process was successfully created.' }
        format.json { render :show, status: :created, location: @proce }
      else
        format.html { render :new }
        format.json { render json: @proce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proces/1
  # PATCH/PUT /proces/1.json
  def update
    respond_to do |format|
      if @proce.update(proce_params)
        format.html { redirect_to proces_url, notice: 'Process was successfully updated.' }
        format.json { render :show, status: :ok, location: @proce }
      else
        format.html { render :edit }
        format.json { render json: @proce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proces/1
  # DELETE /proces/1.json
  def destroy
    @proce.destroy
    respond_to do |format|
      format.html { redirect_to proces_url, notice: 'Process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
	def admin_only
    if current_user.userrole!='admin'
      redirect_to root_path, :alert => "Access denied."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proce
      @proce = Proce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proce_params
      params.require(:proce).permit(:division, :brand, :season, :year, :market,:images,:factory,:subcontractor, :customername, 
      :customeraccount, :project, :referncestyle, :xmilldate, :productionleadtime,:salesproceedtosamplerequest, :protoduebackfromvendor,
      :daftovendordate, :comments, :rtlmu, :mkup, :projectedunits, :targetfob, :targetmu, :targetws, :percolor, :perstyle, :incoterms, :moq,
      :thousandtofivethousandPCS, :fivethousandtotenthousandPCS, :ldpboat, :ldpair, :startshipdate, :orderduedateviaboat, :orderduedateviaair,
      :soss, :nmbrofdefsmplneeded, :dafissued, :sampleduedate, :daf2soss, :daf2nmbrofdefsmplneeded, :daf2dafissued, :daf2sampleduedate)
    end
end
