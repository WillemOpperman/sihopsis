class CampaignSchedulePlacementCostAllocationSplit < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_placement
    belongs_to :company_cost_centre
    belongs_to :company_accounting_period
    belongs_to :creation_source
    belongs_to :additional_company_cost_centre
    belongs_to :journals_document_line
  
    attr_accessible :code, :eis_sync_date, :is_taken, :name, :split_percentage, :taken_date_time, :uid
  
  def to_s
    name
  end

end
