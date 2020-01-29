class IsUsedMailController < ApplicationController
  def by_index
    index = params[:index]
    @user = User.find_by(u_mail: index)

    if @user.nil? then
     render json: true
    else
     render json: false
    end
  end

end
