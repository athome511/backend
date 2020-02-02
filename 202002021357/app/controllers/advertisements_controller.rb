class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :update, :destroy]

  # GET /advertisements
  def index
    @advertisements = Advertisement.all
    @advertisements.each do |ad|
      ad.a_image_link = "http://18.178.35.28:3001/ad/#{ad.id}"
    end

    render json: @advertisements
  end

  # GET /advertisements/1
  def show
    @advertisement.a_image_link = "http://18.178.35.28:3001/ad/#{@advertisement.id}"
    render json: @advertisement
  end

  # POST /advertisements
  def create
    @advertisement = Advertisement.new(advertisement_params)

    if @advertisement.save
      render json: @advertisement, status: :created, location: @advertisement
    else
      render json: @advertisement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /advertisements/1
  def update
    if @advertisement.update(advertisement_params)
      render json: @advertisement
    else
      render json: @advertisement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /advertisements/1
  def destroy
    @advertisement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def advertisement_params
      params.require(:advertisement).permit(:a_image_link, :a_link)
    end
end
