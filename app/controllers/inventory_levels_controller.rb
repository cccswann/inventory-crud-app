class InventoryLevelsController < ApplicationController
  before_action :set_inventory_level, only: %i[ show edit update destroy ]

  # GET /inventory_levels or /inventory_levels.json
  def index
    @inventory_levels = InventoryLevel.all
  end

  # GET /inventory_levels/1 or /inventory_levels/1.json
  def show
  end

  # GET /inventory_levels/new
  def new
    @inventory_level = InventoryLevel.new
  end

  # GET /inventory_levels/1/edit
  def edit
    
  end

  # POST /inventory_levels or /inventory_levels.json
  def create
    @inventory_level = InventoryLevel.new(inventory_level_params)

    respond_to do |format|
      if @inventory_level.save
        format.html { redirect_to inventory_level_url(@inventory_level), notice: "Inventory level was successfully created." }
        format.json { render :show, status: :created, location: @inventory_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventory_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_levels/1 or /inventory_levels/1.json
  def update
    respond_to do |format|
      if @inventory_level.update(inventory_level_params)
        format.html { redirect_to inventory_level_url(@inventory_level), notice: "Inventory level was successfully updated." }
        format.json { render :show, status: :ok, location: @inventory_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventory_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_levels/1 or /inventory_levels/1.json
  def destroy
    @inventory_level.destroy

    respond_to do |format|
      format.html { redirect_to inventory_levels_url, notice: "Inventory level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_level
      @inventory_level = InventoryLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_level_params
      params.require(:inventory_level).permit(:available,:item_id,:warehouse_id)
    end
end
