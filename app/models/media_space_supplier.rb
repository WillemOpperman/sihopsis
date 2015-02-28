class MediaSpaceSupplier < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_space
    belongs_to :supplier
    belongs_to :cost_type
  
    attr_accessible :code, :commission_percentage, :eis_sync_date, :is_active, :minimum_intermediary_margin_percentage, :uid
  
  def to_s
    "MediaSpaceSupplier #{id}"
  end

end
