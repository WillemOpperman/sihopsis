class EisServiceProvider < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :code_external, :eis_sync_date, :is_this_agency, :name, :service_provider_modified_date, :uid
  
  def to_s
    name
  end

end
