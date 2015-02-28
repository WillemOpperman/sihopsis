class CampaignSchedulePlacementFeeLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_placement
    belongs_to :media_fee_type
  
    attr_accessible :code, :eis_sync_date, :fee_amount, :fee_home_amount, :fee_percent, :uid
  
  def to_s
    "CampaignSchedulePlacementFeeLine #{id}"
  end

end
