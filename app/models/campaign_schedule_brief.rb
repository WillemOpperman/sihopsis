class CampaignScheduleBrief < ActiveRecord::Base
  belongs_to :company_division
  belongs_to :campaign_schedule
  belongs_to :contact
  belongs_to :communication_status
  belongs_to :creation_source
attr_accessible :code, :description, :eis_sync_date, :uid

  def to_s
    "CampaignScheduleBrief #{id}"
end

end
