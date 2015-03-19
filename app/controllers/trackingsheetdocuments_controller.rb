class TrackingsheetdocumentsController < ApplicationController
  before_action :set_trackingsheetdocument, only: [:show, :edit, :update, :destroy]
	layout 'vendor_portal_null'

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
        format.html { redirect_to @trackingsheetdocument, notice: 'Trackingsheetdocument was successfully created.' }
        format.json { render :show, status: :created, location: @trackingsheetdocument }
      else
        format.html { render :new }
        format.json { render json: @trackingsheetdocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackingsheetdocuments/1
  # PATCH/PUT /trackingsheetdocuments/1.json
  def update
    respond_to do |format|
      if @trackingsheetdocument.update(trackingsheetdocument_params)
        format.html { redirect_to @trackingsheetdocument, notice: 'Trackingsheetdocument was successfully updated.' }
        format.json { render :show, status: :ok, location: @trackingsheetdocument }
      else
        format.html { render :edit }
        format.json { render json: @trackingsheetdocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trackingsheetdocuments/1
  # DELETE /trackingsheetdocuments/1.json
  def destroy
    @trackingsheetdocument.destroy
    respond_to do |format|
      format.html { redirect_to trackingsheetdocuments_url, notice: 'Trackingsheetdocument was successfully destroyed.' }
      format.json { head :no_content }
    end
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
