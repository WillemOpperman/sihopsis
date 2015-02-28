class AssociateProduct < ActiveRecord::Base

  has_paper_trail

    belongs_to :associate
    belongs_to :default_contact
  
    attr_accessible :code, :code_external, :default_agency_commission_percentage, :eis_sync_date, :is_active, :name, :region, :tax_registration_no, :uid
  
  def to_s
    name
  end

end
