class CommunicationStatus < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_default, :is_emailed, :is_printed, :name, :uid
  
  def to_s
    name
  end

end
