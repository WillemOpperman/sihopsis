class CurrencyList < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :company_division
  
    attr_accessible :code, :eis_sync_date, :expiry_date, :is_active, :name, :start_date, :uid
  
  def to_s
    name
  end

end
