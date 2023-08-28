class CosmeticsController < ApplicationController
  before_action :set_cosmetic, only: %i[show edit update destroy]

  # GET /cosmetics or /cosmetics.json
  def index
    @cosmetics = Cosmetic.all
  end

  # GET /cosmetics/1 or /cosmetics/1.json
  def show; end

  # GET /cosmetics/new
  def new
    @cosmetic = Cosmetic.new
  end

  # GET /cosmetics/1/edit
  def edit; end

  # POST /cosmetics or /cosmetics.json
  def create
    @cosmetic = Cosmetic.new(cosmetic_params)

    respond_to do |format|
      if @cosmetic.save
        format.html { redirect_to cosmetic_url(@cosmetic), notice: 'Cosmetic was successfully created.' }
        format.json { render :show, status: :created, location: @cosmetic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cosmetic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmetics/1 or /cosmetics/1.json
  def update
    respond_to do |format|
      if @cosmetic.update(cosmetic_params)
        format.html { redirect_to cosmetic_url(@cosmetic), notice: 'Cosmetic was successfully updated.' }
        format.json { render :show, status: :ok, location: @cosmetic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cosmetic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmetics/1 or /cosmetics/1.json
  def destroy
    @cosmetic.destroy

    respond_to do |format|
      format.html { redirect_to cosmetics_url, notice: 'Cosmetic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cosmetic
    @cosmetic = Cosmetic.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cosmetic_params
    params.require(:cosmetic).permit(:name, :description, :brand_id, :price, :quantity, :discount_id)
  end
end
