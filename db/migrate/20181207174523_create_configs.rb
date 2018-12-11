class CreateConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :configs do |t|
      t.integer :cust_id
      t.string :loan_nbr, :limit=> 16
      t.string :actv_sts, :limit => 1, :null => false

      t.timestamps
    end
    change_column :configs, :cust_id, :bigint
    add_reference :configs, :asset, foreign_key: true
    
     
  end
end
