module ApplicationHelper
	def display_str(audit_log)
		aud_log = AudLog.find_by_id_and_del_flg(audit_log,'F') #AudLog.find_by_id_and_del_flag(audit_log,"F")
		asset = Asset.find(aud_log.asset_id)
		return asset.html_string
	end
	
	def identify_active_customer(audit_log_customer_id)
		active_customer = Config.find_by_id_and_actv_sts(audit_log_customer_id,'T')
		return active_customer
	end
	

end
