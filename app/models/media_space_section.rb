class MediaSpaceSection < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space
    belongs_to :default_material_deadline_days
    belongs_to :default_cancellation_days
  
    attr_accessible :code, :eis_sync_date, :is_active, :name, :uid
  
  def to_s
    name
  end

end
