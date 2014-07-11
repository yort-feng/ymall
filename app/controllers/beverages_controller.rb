class BeveragesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beverage, only: [:show, :edit, :update, :destroy]

  # GET /beverages
  # GET /beverages.json
  def index
    @beverages = Beverage.all
  end

  # GET /beverages/1
  # GET /beverages/1.json
  def show
  end

  # GET /beverages/new
  def new
    @beverage = Beverage.new
  end

  # GET /beverages/1/edit
  def edit
  end

  # POST /beverages
  # POST /beverages.json
  def create
    @beverage = Beverage.new(beverage_params)

    respond_to do |format|
      if @beverage.save
        format.html { redirect_to @beverage, notice: 'Beverage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beverage }
      else
        format.html { render action: 'new' }
        format.json { render json: @beverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beverages/1
  # PATCH/PUT /beverages/1.json
  def update
    respond_to do |format|
      if @beverage.update(beverage_params)
        format.html { redirect_to @beverage, notice: 'Beverage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beverages/1
  # DELETE /beverages/1.json
  def destroy
    @beverage.destroy
    respond_to do |format|
      format.html { redirect_to beverages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beverage
      @beverage = Beverage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beverage_params
      params.require(:beverage).permit(:image, :name, :price, :memo)
    end
end
