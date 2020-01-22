class ClothController < ApplicationController
  def by_index
    index = params[:index]
    image = Cloth.find_by(id: index).c_link

    base64_image = image.split(',', 2).last
    tmp = image.split('/',2).last
    extension = tmp.split(';',2).first

    send_data ::Base64.decode64(base64_image),
    filename: "#{index}.#{extension}",
    type: "image/#{extension}",
    disposition: 'inline'
  end
end
