class SupplierType < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_media, :is_media_production, :name, :uid
  
  def to_s
    name
  end

end
