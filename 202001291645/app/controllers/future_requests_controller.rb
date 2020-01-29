class FutureRequestsController < ApplicationController
  def index
    @requests = Request.all.order(created_at: "DESC")
    @future_req = []

    @requests.each do |req|
      if req.r_limit > DateTime.now && req.is_selected_bc == false
        @future_req.push(req)
      end
    end
    render json: @future_req
  end

end
