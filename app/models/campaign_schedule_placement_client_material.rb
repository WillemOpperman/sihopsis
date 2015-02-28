class CampaignSchedulePlacementClientMaterial < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_placement
    belongs_to :client_material
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :is_primary, :uid
  
  def to_s
    "CampaignSchedulePlacementClientMaterial #{id}"
  end

end
