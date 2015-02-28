class ClientBillingSetting < ActiveRecord::Base

  has_paper_trail

    belongs_to :company_division
    belongs_to :client
    belongs_to :client_product
    belongs_to :media_category
    belongs_to :supplier
    belongs_to :media_space
  
    attr_accessible :code, :expiry_date, :is_active, :start_date, :uid
  
  def to_s
    "ClientBillingSetting #{id}"
  end

end
