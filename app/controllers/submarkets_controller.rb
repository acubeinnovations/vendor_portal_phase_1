class SubmarketsController < ApplicationController
  before_action :set_submarket, only: [:show, :edit, :update, :destroy]
	layout 'vendor_portal'
  # GET /submarkets
  # GET /submarkets.json
  def index
    @submarkets = Submarket.all
  end

  # GET /submarkets/1
  # GET /submarkets/1.json
  def show
  end

  # GET /submarkets/new
  def new
    @submarket = Submarket.new
  end

  # GET /submarkets/1/edit
  def edit
  end

  # POST /submarkets
  # POST /submarkets.json
  def create
    @submarket = Submarket.new(submarket_params)

    respond_to do |format|
      if @submarket.save
        format.html { redirect_to @submarket, notice: 'Submarket was successfully created.' }
        format.json { render :show, status: :created, location: @submarket }
      else
        format.html { render :new }
        format.json { render json: @submarket.errors, status: :unprocessable_entity }
      end
    end
  end
		
	def ajaxcreate_submarkets
    @submarket = Submarket.new(:name=>params[:field])
		if @submarket.save
        @submarkets = Submarket.all
   		  render json: Hash[@submarkets.map { |v| [ v[:id].to_s, v[:name].to_s ] } ]
      end
   
  end

  # PATCH/PUT /submarkets/1
  # PATCH/PUT /submarkets/1.json
  def update
    respond_to do |format|
      if @submarket.update(submarket_params)
        format.html { redirect_to @submarket, notice: 'Submarket was successfully updated.' }
        format.json { render :show, status: :ok, location: @submarket }
      else
        format.html { render :edit }
        format.json { render json: @submarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submarkets/1
  # DELETE /submarkets/1.json
  def destroy
    @submarket.destroy
    respond_to do |format|
      format.html { redirect_to submarkets_url, notice: 'Submarket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submarket
      @submarket = Submarket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submarket_params
      params.require(:submarket).permit(:name)
    end
end
