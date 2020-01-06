class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :u_name
      t.string :u_mail
      t.string :u_password
      t.text :u_icon
      t.integer :u_month_bc
      t.integer :u_total_bc

      t.timestamps
    end
  end
end
