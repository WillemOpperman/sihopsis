class CostType < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_gross, :is_nett, :name, :uid
  
  def to_s
    name
  end

end
