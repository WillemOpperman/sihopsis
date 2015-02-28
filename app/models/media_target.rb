class MediaTarget < ActiveRecord::Base

  has_paper_trail

    belongs_to :type
  
    attr_accessible :code, :eis_sync_date, :is_active, :is_name_auto_maintained, :name, :range_from_amount, :range_to_amount, :rate_increase_amount, :rate_increase_percentage, :uid
  
  def to_s
    name
  end

end
