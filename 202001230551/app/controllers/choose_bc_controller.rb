require 'date'

class ChooseBcController < ApplicationController
  before_action :set_init, only: [:show, :update]

  def index
    @already_bc_req = []
    @requests = Request.all.order(created_at: "DESC")
    @requests.each do |req|
      if req.is_selected_bc
        @already_bc_req.push(req)
      end
    end

    render json: @already_bc_req
  end

  def show
    render json: @request
  end

  def update
    mbc = @user.u_month_bc.to_i + 1
    tbc = @user.u_total_bc.to_i + 1
    if @proposal.update( p_bc: DateTime.now) && @request.update( is_selected_bc: true) && @user.update( u_month_bc: mbc, u_total_bc: tbc)
      render json: true
    else
      render json: false
    end
  end

  private
    def set_init
      @proposal = Proposal.find(params[:id])
      @request = Request.find_by(id: @proposal.p_r_id)
      @user = User.find_by(id: @proposal.p_u_id)
    end

    # Only allow a trusted parameter "white list" through.
    def proposal_params
      params.require(:proposal).permit(:p_r_id)
    end
end
