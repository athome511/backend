class LoginController < ApplicationController
  def by_index
    index = params[:index]
    @user = User.find_by(u_mail: index)

    if @user.nil? then
     render json: nil
    else
     @user.u_icon = "http://18.178.35.28:3001/icon/#{@user.id}"
     render json: @user
    end
  end

end
