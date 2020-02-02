class UserProposalsController < ApplicationController
  before_action :set_proposal, only: [:show]

  # GET /proposals/1
  def show
    hash = []
    @proposal.each do |prop|
      tmp = prop.p_r_id
      item = Request.find(tmp)

      if item.is_selected_bc then
        hash.unshift(item)
      else
        hash.push(item)
      end
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
