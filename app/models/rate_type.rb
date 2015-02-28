class RateType < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
  
    attr_accessible :code, :default_quantity_per_unit_rate, :eis_sync_date, :is_active, :is_added_value, :is_calculated_as_rate_over_quantity_per_unit_rate_x_quantity, :is_calculated_as_rate_x_size_x_columns, :is_calculated_as_rate_x_size_x_columns_over_quantity_per_unit_rate_x_quantity, :is_default, :name, :uid
  
  def to_s
    name
  end

end
