class CampaignSchedulePlacementDiscountLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_placement
    belongs_to :media_discount_surcharge_type
    belongs_to :media_discount_surcharge_type_client_deal
    belongs_to :apply_after
  
    attr_accessible :code, :discount_amount, :discount_percent, :discount_to_client_amount, :discount_to_client_percent, :eis_sync_date, :is_default, :uid
  
  def to_s
    "CampaignSchedulePlacementDiscountLine #{id}"
  end

end
