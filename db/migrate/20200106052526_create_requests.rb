class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :r_title
      t.text :r_memo
      t.datetime :r_limit
      t.boolean :is_selected_bc
      t.integer :r_u_id

      t.timestamps
    end
  end
end
