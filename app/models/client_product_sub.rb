class ClientProductSub < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_product
    belongs_to :default_contact
    belongs_to :creation_source
  
    attr_accessible :code, :code_external, :default_agency_commission_percentage, :eis_sync_date, :is_active, :name, :region, :tax_registration_no, :uid
  
  def to_s
    name
  end

end
