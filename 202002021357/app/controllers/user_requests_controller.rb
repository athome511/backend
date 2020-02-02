class UserRequestsController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /requests/1
  def show
    render json: @request
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.where(r_u_id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:r_title, :r_memo, :r_limit, :is_selected_bc, :r_u_id)
    end
end
