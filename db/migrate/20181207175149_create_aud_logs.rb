class CreateAudLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :aud_logs do |t|
      t.integer :rec_id
      t.datetime :sent_dttm
      t.integer :cust_id
      t.string :loan_nbr, :limit=> 16
      t.string :chnl, :limit=> 16
      t.string :view_sts, :limit=> 1
      t.string :sent_to, :limit=> 128
      t.string :del_flg, :limit=> 1
      t.integer :ver_nbr
      t.datetime :asset_eff_dt

      t.timestamps
    end
    change_column :aud_logs, :rec_id, :bigint
    change_column :aud_logs, :cust_id, :bigint
    add_reference :aud_logs, :asset, foreign_key: true
    
    
    #~ execute  "ALTER TABLE aud_logs ADD CONSTRAINT AUD_LOG_PK PRIMARY KEY (rec_id, sent_dttm);"
  end
end
