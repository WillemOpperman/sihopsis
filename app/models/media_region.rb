class MediaRegion < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :code_external, :eis_sync_date, :name, :uid
  
  def to_s
    name
  end

end
