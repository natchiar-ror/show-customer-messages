class HomeController < ApplicationController
  def index
	  #~ @assets = Asset.all
	  @active_customers = Config.where(actv_sts: "T")
  end
  def view_message
	@audit_log = AudLog.where(asset_id: params[:asset_id],cust_id: params[:customer_id]).first
	puts @audit_log.inspect
	
	#~ @audit_logs.each do |audit_log|
		@audit_log.update(view_sts: "T")
	#~ end
	#@asset = Asset.find(params[:asset_id])
  end
  def delete_message
    @audit_log = AudLog.find(params[:asset_id])
    @audit_log.update(del_flg: "T")
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  
end
