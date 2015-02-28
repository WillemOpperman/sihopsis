class ClientCommissionDealAssociateMember < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_commission_deal
    belongs_to :associate
    belongs_to :associate_product
  
    attr_accessible :code, :member_commission_split_percentage, :uid
  
  def to_s
    "ClientCommissionDealAssociateMember #{id}"
  end

end
