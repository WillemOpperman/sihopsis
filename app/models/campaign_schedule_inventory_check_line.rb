class CampaignScheduleInventoryCheckLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_inventory_check
    belongs_to :campaign_schedule_placement
  
    attr_accessible :code, :commission_amount, :commission_percent, :eis_sync_date, :gross_amount, :nett_amount, :revision_no, :uid
  
  def to_s
    "CampaignScheduleInventoryCheckLine #{id}"
  end

end
