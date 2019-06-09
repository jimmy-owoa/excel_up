class BussinesToBussinessesController < ApplicationController
  before_action :set_bussines_to_bussiness, only: [:show, :edit, :update, :destroy]

  # GET /bussines_to_bussinesses
  # GET /bussines_to_bussinesses.json
  def index
    @bussines_to_bussinesses = BussinesToBussiness.all
  end

  # GET /bussines_to_bussinesses/1
  # GET /bussines_to_bussinesses/1.json
  def show
  end

  # GET /bussines_to_bussinesses/new
  def new
    @bussines_to_bussiness = BussinesToBussiness.new
  end

  # GET /bussines_to_bussinesses/1/edit
  def edit
  end

  # POST /bussines_to_bussinesses
  # POST /bussines_to_bussinesses.json
  def create
    @bussines_to_bussiness = BussinesToBussiness.new(bussines_to_bussiness_params)

    respond_to do |format|
      if @bussines_to_bussiness.save
        format.html { redirect_to @bussines_to_bussiness, notice: 'Bussines to bussiness was successfully created.' }
        format.json { render :show, status: :created, location: @bussines_to_bussiness }
      else
        format.html { render :new }
        format.json { render json: @bussines_to_bussiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bussines_to_bussinesses/1
  # PATCH/PUT /bussines_to_bussinesses/1.json
  def update
    respond_to do |format|
      if @bussines_to_bussiness.update(bussines_to_bussiness_params)
        format.html { redirect_to @bussines_to_bussiness, notice: 'Bussines to bussiness was successfully updated.' }
        format.json { render :show, status: :ok, location: @bussines_to_bussiness }
      else
        format.html { render :edit }
        format.json { render json: @bussines_to_bussiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bussines_to_bussinesses/1
  # DELETE /bussines_to_bussinesses/1.json
  def destroy
    @bussines_to_bussiness.destroy
    respond_to do |format|
      format.html { redirect_to bussines_to_bussinesses_url, notice: 'Bussines to bussiness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bussines_to_bussiness
      @bussines_to_bussiness = BussinesToBussiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bussines_to_bussiness_params
      params.require(:bussines_to_bussiness).permit(:sales_by_period_cash, :sales_by_period_units, :inventory_cash, :inventory_units)
    end
end
