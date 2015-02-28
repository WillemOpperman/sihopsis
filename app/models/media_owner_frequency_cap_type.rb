class MediaOwnerFrequencyCapType < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_owner
    belongs_to :media_frequency_cap_type
  
    attr_accessible :code, :eis_sync_date, :is_active, :uid
  
  def to_s
    "MediaOwnerFrequencyCapType #{id}"
  end

end
