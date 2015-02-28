class MediaFeeType < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :supplier
    belongs_to :media_space
    belongs_to :media_space_part
    belongs_to :media_category_size
    belongs_to :media_category_format
  
    attr_accessible :code, :default_fee_amount, :eis_sync_date, :is_amount_based, :is_calculated_off_rate, :is_default, :is_only_allowed_once_per_placement, :name, :uid
  
  def to_s
    name
  end

end
