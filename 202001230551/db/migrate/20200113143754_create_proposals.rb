class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.text :p_pc_text
      t.text :p_memo
      t.integer :p_u_id
      t.integer :p_r_id
      t.integer :p_bc

      t.timestamps
    end
  end
end
