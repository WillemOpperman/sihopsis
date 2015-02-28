class MediaDiscountSurchargeTypeClientDeal < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_discount_surcharge_type
    belongs_to :client
    belongs_to :client_product
  
    attr_accessible :client_share_amount, :client_share_percentage, :code, :eis_sync_date, :is_active, :is_client_share_amount_based, :is_client_share_calculated_off_rate, :is_default, :name, :uid
  
  def to_s
    name
  end

end
