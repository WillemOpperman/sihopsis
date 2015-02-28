class RateCard < ActiveRecord::Base

  has_paper_trail

    belongs_to :specific_company_division
    belongs_to :supplier_group
    belongs_to :supplier
    belongs_to :media_space
    belongs_to :client_group
    belongs_to :client
    belongs_to :client_product
    belongs_to :supplier_contact
  
    attr_accessible :code, :expiry_date, :is_active, :start_date, :uid
  
  def to_s
    "RateCard #{id}"
  end

end
