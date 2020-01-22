class ChangeDataPbcToProposals < ActiveRecord::Migration[5.2]
  def change
    change_column :proposals, :p_bc, :datetime 
  end
end
