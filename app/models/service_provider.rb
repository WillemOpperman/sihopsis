class ServiceProvider < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :default_proof_file_extention, :eis_sync_date, :is_active, :is_this_agency, :modified_date, :name, :uid
  
  def to_s
    name
  end

end
