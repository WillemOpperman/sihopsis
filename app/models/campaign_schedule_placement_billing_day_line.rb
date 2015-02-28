class CampaignSchedulePlacementBillingDayLine < ActiveRecord::Base
  belongs_to :campaign_schedule_placement
  belongs_to :client_financial_document_line
  belongs_to :creation_source
  belongs_to :parent
attr_accessible :billing_day_end_date, :billing_day_start_date, :code, :commission_amount, :commission_home_amount, :eis_sync_date, :fees_amount, :fees_home_amount, :gross_amount, :gross_home_amount, :is_billed, :is_credited, :nett_amount, :nett_home_amount, :notes, :percent_of_total, :quantity, :uid

  def to_s
    "CampaignSchedulePlacementBillingDayLine #{id}"
end

end
