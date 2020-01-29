class CreateCloths < ActiveRecord::Migration[5.2]
  def change
    create_table :cloths do |t|
      t.integer :c_u_id
      t.text :c_link

      t.timestamps
    end
  end
end
