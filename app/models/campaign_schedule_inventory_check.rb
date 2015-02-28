class CampaignScheduleInventoryCheck < ActiveRecord::Base

  has_paper_trail

    belongs_to :company_division
    belongs_to :campaign_schedule
    belongs_to :supplier
    belongs_to :media_space
    belongs_to :contact
    belongs_to :communication_status
    belongs_to :creation_source
    belongs_to :tax_type
  
    attr_accessible :code, :commission_amount, :description, :eis_sync_date, :gross_amount, :nett_amount, :tax_gross_amount, :tax_nett_amount, :uid
  
  def to_s
    "CampaignScheduleInventoryCheck #{id}"
  end

end
