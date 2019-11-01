class ConsumptionsController < ApplicationController
  before_action :set_consumption, only: [:show, :edit, :update, :destroy]

  # GET /consumptions
  # GET /consumptions.json
  def index
    @consumptions = Consumption.all
    @unit_batch_map = []
    batches = Batch.all

    batches.each do |batch|
      name = batch.name
      unit = batch.unit
      @unit_batch_map.push [name, unit]
    end
  end

  # GET /consumptions/1
  # GET /consumptions/1.json
  def show
  end

  # GET /consumptions/new
  def new
    @consumption = Consumption.new
    @batches = []
    @animal_groups = []

    Batch.each do |batch|
      @batches.push batch.name
    end

    AnimalGroup.each do |animal_group|
      @animal_groups.push animal_group.name
    end
  end

  # GET /consumptions/1/edit
  def edit
  end

  # POST /consumptions
  # POST /consumptions.json
  def create
    @consumption = Consumption.new(consumption_params)

    respond_to do |format|
      if @consumption.save
        format.html { redirect_to @consumption, notice: 'Consumption was successfully created.' }
        format.json { render :show, status: :created, location: @consumption }
      else
        format.html { render :new }
        format.json { render json: @consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumptions/1
  # PATCH/PUT /consumptions/1.json
  def update
    respond_to do |format|
      if @consumption.update(consumption_params)
        format.html { redirect_to @consumption, notice: 'Consumption was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumption }
      else
        format.html { render :edit }
        format.json { render json: @consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumptions/1
  # DELETE /consumptions/1.json
  def destroy
    @consumption.destroy
    respond_to do |format|
      format.html { redirect_to consumptions_url, notice: 'Consumption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_consumption
    @consumption = Consumption.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def consumption_params
    params.require(:consumption).permit(:first_date, :last_date, :amount, :batch, :animal_group)
  end
end
