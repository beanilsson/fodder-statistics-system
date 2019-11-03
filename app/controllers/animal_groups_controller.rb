class AnimalGroupsController < ApplicationController
  before_action :set_animal_group, only: [:show, :edit, :update, :destroy]
  # GET /animal_groups
  # GET /animal_groups.json
  def index
    @animal_groups = AnimalGroup.all
  end

  # GET /animal_groups/1
  # GET /animal_groups/1.json
  def show
  end

  # GET /animal_groups/new
  def new
    @animal_group = AnimalGroup.new
  end

  # GET /animal_groups/1/edit
  def edit
  end

  # POST /animal_groups
  # POST /animal_groups.json
  def create
    @animal_group = AnimalGroup.new(animal_group_params)

    respond_to do |format|
      if @animal_group.save
        format.html { redirect_to @animal_group, notice: 'Animal group was successfully created.' }
        format.json { render :show, status: :created, location: @animal_group }
      else
        format.html { render :new }
        format.json { render json: @animal_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_groups/1
  # PATCH/PUT /animal_groups/1.json
  def update
    respond_to do |format|
      @animal_group = AnimalGroup.find(params[:id])
      if @animal_group.update(animal_group_params)
        format.html { redirect_to @animal_group, notice: 'Djurgrupp uppdaterad!' }
        format.json { render :show, status: :ok, location: @animal_group }
      else
        format.html { render :edit }
        format.json { render json: @animal_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_groups/1
  # DELETE /animal_groups/1.json
  def destroy
    @animal_group.destroy
    respond_to do |format|
      format.html { redirect_to animal_groups_url, notice: 'Animal group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_animal_group
    @animal_group = AnimalGroup.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def animal_group_params
    params.require(:animal_group).permit(:name, :amount)
  end
end
