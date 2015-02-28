class ClientCompanyCostCentre < ActiveRecord::Base

  has_paper_trail

    belongs_to :client
    belongs_to :company_cost_centre
    belongs_to :creation_source
    belongs_to :additional_company_cost_centre
  
    attr_accessible :code, :eis_sync_date, :is_active, :name, :uid
  
  def to_s
    name
  end

end
