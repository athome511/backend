class CreateAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements do |t|
      t.text :a_image_link
      t.text :a_link

      t.timestamps
    end
  end
end
