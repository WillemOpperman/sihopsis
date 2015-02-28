class ClientLink < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :is_default, :is_to_advertiser, :is_to_media_agency, :is_to_natural_client, :name, :uid
  
  def to_s
    name
  end

end
