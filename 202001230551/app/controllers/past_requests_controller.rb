class PastRequestsController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]

  def index
    @requests = Request.all.order(created_at: "DESC")
    @past_req = []

    @requests.each do |req|
      if req.r_limit < DateTime.now
        @past_req.push(req)
      end
    end


    render json: @past_req
  end

  def show

    render json: @request
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end
end
