module ApplicationHelper
	def display_str(audit_log)
		aud_log = AudLog.find(audit_log)
		asset = Asset.find(aud_log.asset_id)
		return asset.html_string
	end

end
