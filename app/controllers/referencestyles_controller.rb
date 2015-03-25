class ReferencestylesController < ApplicationController
  before_action :set_referencestyle, only: [:show, :edit, :update, :destroy]

  # GET /referencestyles
  # GET /referencestyles.json
  def index
    @referencestyles = Referencestyle.all
  end

  # GET /referencestyles/1
  # GET /referencestyles/1.json
  def show
  end

  # GET /referencestyles/new
  def new
    @referencestyle = Referencestyle.new
  end

  # GET /referencestyles/1/edit
  def edit
  end

  # POST /referencestyles
  # POST /referencestyles.json
  def create
    @referencestyle = Referencestyle.new(referencestyle_params)

    respond_to do |format|
      if @referencestyle.save
        format.html { redirect_to @referencestyle, notice: 'Referencestyle was successfully created.' }
        format.json { render :show, status: :created, location: @referencestyle }
      else
        format.html { render :new }
        format.json { render json: @referencestyle.errors, status: :unprocessable_entity }
      end
    end
  end

	def ajaxcreate_referencestyles
    @referencestyle = Referencestyle.new(:name=>params[:field])
		if @referencestyle.save
        @referencestyles = Referencestyle.all
   		  render json: Hash[@referencestyles.map { |v| [ v[:id].to_s, v[:name].to_s ] } ]
      end
   
  end

  # PATCH/PUT /referencestyles/1
  # PATCH/PUT /referencestyles/1.json
  def update
    respond_to do |format|
      if @referencestyle.update(referencestyle_params)
        format.html { redirect_to @referencestyle, notice: 'Referencestyle was successfully updated.' }
        format.json { render :show, status: :ok, location: @referencestyle }
      else
        format.html { render :edit }
        format.json { render json: @referencestyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referencestyles/1
  # DELETE /referencestyles/1.json
  def destroy
    @referencestyle.destroy
    respond_to do |format|
      format.html { redirect_to referencestyles_url, notice: 'Referencestyle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referencestyle
      @referencestyle = Referencestyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referencestyle_params
      params.require(:referencestyle).permit(:name)
    end
end
