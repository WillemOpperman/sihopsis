class MediaSpaceTimeBand < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space
  
    attr_accessible :code, :from_time, :is_friday, :is_monday, :is_saturday, :is_sunday, :is_thursday, :is_tuesday, :is_wednesday, :time_band_name, :to_time, :uid
  
  def to_s
    "MediaSpaceTimeBand #{id}"
  end

end
