class CampaignSchedulePlacementProposedChange < ActiveRecord::Base

  has_paper_trail

    belongs_to :original_campaign_schedule_placement
    belongs_to :proposed_campaign_schedule_placement
    belongs_to :proposed_user
    belongs_to :approval_user
    belongs_to :client_financial_document_line
  
    attr_accessible :change_reason, :code, :is_approved, :is_cancellation_request, :is_closed, :is_rejected, :status_date, :status_reason, :uid
  
  def to_s
    "CampaignSchedulePlacementProposedChange #{id}"
  end

end
