class ClosetsController < ApplicationController
  before_action :set_cloth, only: [:show]

  # GET /closets/1
  def show
    @cloth.c_link = "http://18.178.35.28:3001/cloth/#{@cloth.id}"
    render json: @cloth
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth
      @cloth = Cloth.find(params[:id])
    end
end
