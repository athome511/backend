class UserProposalsController < ApplicationController
  before_action :set_proposal, only: [:show, :update, :destroy]

  # GET /proposals/1
  def show
    hash = []
    @proposal.each do |prop|
      tmp = prop.p_r_id
      prop = Request.find(tmp)
      hash.push(prop)
    end
    render json: hash
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
      @proposal = Proposal.where(p_u_id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proposal_params
      params.require(:proposal).permit(:p_pc_text, :p_memo, :p_u_id, :p_r_id, :p_bc)
    end
end
