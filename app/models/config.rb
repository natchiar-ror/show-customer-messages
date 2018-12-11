class Config < ApplicationRecord
	belongs_to :asset
		after_create :add_audit_log
	
	def add_audit_log
		AudLog.create(
		rec_id: self.id,
		sent_dttm: "2018-12-10 16:03:00",
		cust_id: self.cust_id,
		loan_nbr:  self.loan_nbr,
		chnl: "channel",
		view_sts: "F",
		sent_to: "sent0",
		del_flg: "F",
		ver_nbr: 0,
		asset_eff_dt: "2018-12-10 16:03:00",
		asset_id: self.asset.id,
		)
	end
end
