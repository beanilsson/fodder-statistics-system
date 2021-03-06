class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  # GET /batches
  # GET /batches.json
  def index
    @batches = Batch.all
  end

  # GET /batches/1
  # GET /batches/1.json
  def show
  end

  # GET /batches/new
  def new
    @batch = Batch.new
    @units = ['dl', 'kg', 'g']
    @fodder_types = ['Hö', 'Mineralfoder', 'Halm']
  end

  # GET /batches/1/edit
  def edit
    @units = ['dl', 'kg', 'g']
    @fodder_types = ['Hö', 'Mineralfoder', 'Halm']
  end

  # POST /batches
  # POST /batches.json
  def create
    @batch = Batch.new(batch_params)
    @units = ['dl', 'kg', 'g']
    @fodder_types = ['Hö', 'Mineralfoder', 'Halm']

    respond_to do |format|
      if @batch.save
        format.html { redirect_to @batch, notice: 'Batch sparad!' }
        format.json { render :show, status: :created, location: @batch }
      else
        format.html { render :new }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batches/1
  # PATCH/PUT /batches/1.json
  def update
    @units = ['dl', 'kg', 'g']
    @fodder_types = ['Hö', 'Mineralfoder', 'Halm']

    respond_to do |format|
      @batch = Batch.find(params[:id])
      if @batch.update(batch_params)
        format.html { redirect_to @batch, notice: 'Batch uppdaterad!' }
        format.json { render :show, status: :ok, location: @batch }
      else
        format.html { render :edit }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batches/1
  # DELETE /batches/1.json
  def destroy
    @batch.destroy
    respond_to do |format|
      format.html { redirect_to batches_url, notice: 'Batch borttagen' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_batch
    @batch = Batch.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def batch_params
    params.require(:batch).permit(:name, :amount, :refillable, :unknownAmount, :unit, :fodderType)
  end
end
