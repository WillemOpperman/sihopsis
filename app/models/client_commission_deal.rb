class ClientCommissionDeal < ActiveRecord::Base
  belongs_to :company_division
  belongs_to :client
  belongs_to :client_product
  belongs_to :media_category
  belongs_to :supplier
  belongs_to :media_space
  belongs_to :media_category_size
attr_accessible :agency_commission_percentage, :client_share_commission_percentage, :code, :expiry_date, :is_active, :is_calc_commission_share_after_discount_deal, :members_share_sum_commission_percentage, :remaining_share_revenue_commission_percentage, :start_date, :uid

  def to_s
    "ClientCommissionDeal #{id}"
end

end
