class MediaDiscountSurchargeType < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :supplier
    belongs_to :media_space
    belongs_to :media_space_part
    belongs_to :media_category_size
    belongs_to :media_category_format
  
    attr_accessible :code, :eis_sync_date, :is_active, :is_amount_based, :is_calculated_off_rate, :is_default, :is_full_discount, :name, :uid
  
  def to_s
    name
  end

end
