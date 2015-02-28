class CampaignScheduleBriefLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_brief
    belongs_to :campaign_schedule_placement
  
    attr_accessible :code, :eis_sync_date, :revision_no, :uid
  
  def to_s
    "CampaignScheduleBriefLine #{id}"
  end

end
