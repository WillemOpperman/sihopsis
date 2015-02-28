class CampaignSchedulePlacementRoutingAddress < ActiveRecord::Base
  belongs_to :campaign_schedule_placement
  belongs_to :routing_address_source_type
  belongs_to :routing_address_type
  belongs_to :routing_address
attr_accessible :code, :eis_sync_date, :name, :notes, :uid

  def to_s
    name
end

end
