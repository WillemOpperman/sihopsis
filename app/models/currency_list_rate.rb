class CurrencyListRate < ActiveRecord::Base

  has_paper_trail

    belongs_to :currency_list
    belongs_to :currency
  
    attr_accessible :buying_rate, :code, :eis_sync_date, :name, :selling_rate, :uid
  
  def to_s
    name
  end

end
