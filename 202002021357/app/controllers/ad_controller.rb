class AdController < ApplicationController
before_action :set_user, only: [:show, :update, :destroy]

    def by_index
      index = params[:index]
      ad = Advertisement.find_by(id: index).a_image_link

      base64_image = ad.split(',', 2).last
      tmp = ad.split('/',2).last
      extension = tmp.split(';',2).first

      send_data ::Base64.decode64(base64_image),
        filename: "#{index}.#{extension}",
        type: "image/#{extension}",
        disposition: 'inline'
    end
end
