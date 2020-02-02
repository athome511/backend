class ChangeDataPpctextToProposal < ActiveRecord::Migration[5.2]
  def change
    change_column :proposals, :p_pc_text, :integer
  end
end
