class MediaSpaceRegion < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space
    belongs_to :media_region
  
    attr_accessible :code, :eis_sync_date, :uid
  
  def to_s
    "MediaSpaceRegion #{id}"
  end

end
