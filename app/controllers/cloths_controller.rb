class ClothsController < ApplicationController
  before_action :set_cloth, only: [:show, :update, :destroy]

  # GET /cloths
  def index
    @cloths = Cloth.all

    render json: @cloths
  end

  # GET /cloths/1
  def show
    render json: @cloth
  end

  # POST /cloths
  def create
    @cloth = Cloth.new(cloth_params)

    if @cloth.save
      render json: @cloth, status: :created, location: @cloth
    else
      render json: @cloth.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cloths/1
  def update
    if @cloth.update(cloth_params)
      render json: @cloth
    else
      render json: @cloth.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cloths/1
  def destroy
    @cloth.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth
      @cloth = Cloth.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cloth_params
      params.require(:cloth).permit(:c_u_id, :c_link)
    end
end
