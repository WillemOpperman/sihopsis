class MediaCategorySize < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :media_space
    belongs_to :height
    belongs_to :columns
  
    attr_accessible :code, :columns_unit_of_measure, :eis_sync_date, :height_unit_of_measure, :is_active, :is_name_auto_maintained, :name, :uid
  
  def to_s
    name
  end

end
