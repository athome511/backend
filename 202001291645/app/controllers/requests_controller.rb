class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /requests
  def index
    @requests = Request.all.order(created_at: "DESC")

    render json: @requests
  end

  # GET /requests/1
  def show
    req = {}
    req.store("id",@request.id)
    req.store("r_title",@request.r_title)
    req.store("r_memo",@request.r_memo)
    req.store("r_limit",@request.r_limit)
    req.store("is_selected_bc",@request.is_selected_bc)
    req.store("r_u_id",@request.r_u_id)
    req.store("created_at",@request.created_at)
    req.store("updated_at",@request.updated_at)
    req.store("u_icon","http://18.178.35.28:3001/icon/#{@request.r_u_id}")
    render json: req

    #render json: @request
  end

  # POST /requests
  def create
    attr = request_params
    attr[:is_selected_bc] = false
    @request = Request.new(attr)

    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:r_title, :r_memo, :r_limit, :is_selected_bc, :r_u_id)
    end
end
