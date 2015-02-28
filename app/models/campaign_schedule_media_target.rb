class CampaignScheduleMediaTarget < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule
    belongs_to :media_target
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :is_active, :uid
  
  def to_s
    "CampaignScheduleMediaTarget #{id}"
  end

end
