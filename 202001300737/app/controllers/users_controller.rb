class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    @users.each do |user|
      user.u_icon = "http://18.178.35.28:3001/icon/#{user.id}"
    end

    render json: @users
  end

  # GET /users/1
  def show
    @user.u_icon = "http://18.178.35.28:3001/icon/#{@user.id}"
    render json: @user
  end

  # POST /users
  def create
    attr = user_params
    attr[:u_month_bc] = 0
    attr[:u_total_bc] = 0
    attr[:u_icon] = "data:image/jpeg;base64,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"
    @user = User.new(attr)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:u_mail, :u_name, :u_password, :u_icon, :u_month_bc, :u_total_bc)
    end
end
