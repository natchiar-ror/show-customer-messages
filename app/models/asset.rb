class Asset < ApplicationRecord
	has_many :configs
	#~ after_create :add_audit_log
	
	#~ def add_audit_log
	      #~ AudLog.create(
		#~ rec_id: self.id,
		#~ sent_dttm: "2018-12-10 16:03:00",
		#~ cust_id: 1,
		#~ loan_nbr:  "loan_nbr",
		#~ chnl: "channel",
		#~ view_sts: "F",
		#~ sent_to: "sent0",
		#~ del_flg: "F",
		#~ ver_nbr: self.ver_nbr,
		#~ asset_eff_dt: "2018-12-10 16:03:00",
		#~ asset_id: self.id,
		#~ )
	#~ end
	
end
