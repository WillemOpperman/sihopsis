class MediaOwnerTarget < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_owner
    belongs_to :media_target
  
    attr_accessible :code, :eis_sync_date, :is_active, :uid
  
  def to_s
    "MediaOwnerTarget #{id}"
  end

end
