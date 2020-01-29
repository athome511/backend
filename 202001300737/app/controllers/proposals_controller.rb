class ProposalsController < ApplicationController
  before_action :set_proposal, only: [:update, :destroy]

  def index
    @proposals = Proposal.all
    render json: @proposals
  end

  # GET /proposals/1
  def show
    p_pc = []
    @pro = Proposal.where(p_r_id: params[:id])
    @pro.each do |proposal|
      hash = {}
      arr = []
      hash.store("id",proposal.id)
      hash.store("p_memo",proposal.p_memo)
      hash.store("p_u_id",proposal.p_u_id)
      user = User.find(proposal.p_u_id)
      hash.store("p_u_name",user.u_name)
      req = Request.find(proposal.p_r_id)
      hash.store("p_is_selected_bc",req.is_selected_bc)
      hash.store("p_u_icon","http://18.178.35.28:3001/icon/#{proposal.p_u_id}")
      hash.store("p_r_id",proposal.p_r_id)
      hash.store("p_bc",proposal.p_bc)
      pc = proposal.p_pc_text.split("_").map(&:to_i)
      pc.each do |pc_in|
        tmp = Cloth.find(pc_in)
        hash_in = {}
        hash_in.store("id",tmp.id)
        tmp.c_link = "http://18.178.35.28:3001/cloth/#{pc_in}"
        hash_in.store("link",tmp.c_link)
        arr.push(hash_in)
      end
      hash.store("p_selected_data",arr)
      if hash["p_bc"] != nil then
        p_pc.unshift(hash)
      else
        p_pc.push(hash)
      end
    end
    render json: p_pc
  end

  # POST /proposals
  def create
    @proposal = Proposal.new(proposal_params)

    if @proposal.save
      render json: @proposal, status: :created, location: @proposal
    else
      render json: @proposal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proposals/1
  def update
    if @proposal. update(proposal_params)
      render json: @proposal
    else
      render json: @proposal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proposals/1
  def destroy
    @proposal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal
     @proposal = Proposal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proposal_params
      params.require(:proposal).permit(:p_pc_text, :p_memo, :p_u_id, :p_r_id, :p_bc)
    end
end
