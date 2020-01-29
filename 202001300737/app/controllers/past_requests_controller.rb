class PastRequestsController < ApplicationController

  def index
    @requests = Request.all.order(created_at: "DESC")
    @past_req = []

    @requests.each do |req|
      hash ={}
      hash.store("id",req.id)
      hash.store("r_title",req.r_title)
      hash.store("r_memo",req.r_memo)
      hash.store("r_limit",req.r_limit)
      hash.store("r_is_selected_bc",req.is_selected_bc)
      hash.store("r_u_id",req.r_u_id)
      hash.store("r_u_icon","http://18.178.35.28:3001/icon/#{req.r_u_id}")
      hash.store("created_at",req.created_at)
      hash.store("updated_at",req.updated_at)
      if req.r_limit < DateTime.now || req.is_selected_bc == true
        @past_req.push(hash)
      end
    end

    render json: @past_req
  end

end
