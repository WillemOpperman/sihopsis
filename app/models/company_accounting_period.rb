class CompanyAccountingPeriod < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
  
    attr_accessible :code, :eis_sync_date, :end_date, :is_open, :name, :start_date, :uid
  
  def to_s
    name
  end

end
