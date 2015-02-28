class MediaCategoryFormat < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :media_space
  
    attr_accessible :code, :eis_sync_date, :is_active, :name, :uid
  
  def to_s
    name
  end

end
