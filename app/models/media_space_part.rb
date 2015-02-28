class MediaSpacePart < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space
    belongs_to :creation_source
    belongs_to :type
    belongs_to :media_space_section
    belongs_to :default_material_deadline_days
    belongs_to :default_cancellation_days
    belongs_to :media_category
  
    attr_accessible :code, :eis_sync_date, :from_time, :media_space_date, :name, :to_time, :uid
  
  def to_s
    name
  end

end
