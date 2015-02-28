class MediaSpacePartTarget < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space_part
    belongs_to :media_target
  
    attr_accessible :code, :eis_sync_date, :is_active, :uid
  
  def to_s
    "MediaSpacePartTarget #{id}"
  end

end
