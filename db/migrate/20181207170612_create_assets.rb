class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :asset_id, null: false, :limit=> 5
      t.datetime :eff_dt, null: false
      t.text :html_string
      t.integer :ver_nbr, null: false 
      t.text :title
      t.text :description, null: false, :limit=> 512

      t.timestamps
    end
    
     #~ execute  "ALTER TABLE assets ADD CONSTRAINT ASSET_PK PRIMARY KEY (asset_id, eff_dt, ver_nbr);"
    
  end
  
  
end
