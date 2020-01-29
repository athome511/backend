class IconController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

    def by_index
      index = params[:index]
      icon = User.find_by(id: index).u_icon

      base64_image = icon.split(',', 2).last
      tmp = icon.split('/',2).last
      extension = tmp.split(';',2).first

      send_data ::Base64.decode64(base64_image),
        filename: "#{index}.#{extension}",
        type: "image/#{extension}",
        disposition: 'inline'
    end
end
