class CampaignStatus < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_cancelled, :is_closed, :is_default, :is_open, :name, :uid
  
  def to_s
    name
  end

end
