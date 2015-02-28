class CampaignSchedulePlacementStatusChangeRule < ActiveRecord::Base

  has_paper_trail

    belongs_to :change_from_campaign_schedule_placement_status
    belongs_to :change_to_campaign_schedule_placement_status
  
    attr_accessible :code, :eis_sync_date, :is_allowed, :is_allowed_in_change_wizard, :name, :uid
  
  def to_s
    name
  end

end
