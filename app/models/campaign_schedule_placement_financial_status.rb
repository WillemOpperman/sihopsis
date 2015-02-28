class CampaignSchedulePlacementFinancialStatus < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_placement_active, :is_placement_amended, :is_placement_billed, :is_placement_transitioning, :is_reason_required_to_change_to, :name, :uid
  
  def to_s
    name
  end

end
