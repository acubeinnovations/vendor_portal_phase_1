class TrackingsheetsController < ApplicationController
	layout 'vendor_portal'
  before_action :set_trackingsheet, only: [:show, :edit, :update, :destroy]

  # GET /trackingsheets
  # GET /trackingsheets.json
  def index
    #@trackingsheets = Trackingsheet.all
		redirect_to processmasters_path
  end

  # GET /trackingsheets/1
  # GET /trackingsheets/1.json
  def show
  end

  # GET /trackingsheets/new
  def new
    #@trackingsheet = Trackingsheet.new
		redirect_to processmasters_path
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
    respond_to do |format|
      if @trackingsheet.update(trackingsheet_params)
        format.html { redirect_to processmasters_path, notice: 'Trackingsheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @trackingsheet }
      else
        format.html { render :edit }
        format.json { render json: @trackingsheet.errors, status: :unprocessable_entity }
      end
    end
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackingsheet
      @trackingsheet = Trackingsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackingsheet_params
      params.require(:trackingsheet).permit(:images,:factory,:subcontractor,:xmilldate, :productionleadtime,:salesproceedtosamplerequest, :protoduebackfromvendor,
      :daftovendordate, :rtlmu, :mkup, :projectedunits, :targetfob, :targetmu, :targetws, :percolor, :perstyle, :incoterms, :moq,
      :thousandtofivethousandPCS, :fivethousandtotenthousandPCS, :ldpboat, :ldpair, :startshipdate, :orderduedateviaboat, :orderduedateviaair,
      :soss, :nmbrofdefsmplneeded, :dafissued, :sampleduedate, :daf2soss, :daf2nmbrofdefsmplneeded, :daf2dafissued, :daf2sampleduedate,:processmaster_id,:comments).merge(user: current_user)
    end
end
