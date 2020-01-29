class RankingController < ApplicationController
  before_action :set_ranking, only: [:show, :update, :destroy]

  # GET /ranking
  def index
    rank = []
    ranknum = 1
    ranking = User.all.order(u_month_bc: "DESC")
    ranking.each do |users|
      user = User.find(users.id).attributes
      user.store("u_icon","http://18.178.35.28:3001/icon/#{users.id}")
      user.store("rank",ranknum)
      rank.push(user)
      ranknum = ranknum + 1
    end
    render json: rank

  end

end
