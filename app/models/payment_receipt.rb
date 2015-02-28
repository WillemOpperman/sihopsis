class PaymentReceipt < ActiveRecord::Base

  has_paper_trail

    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :name, :payment_amount, :uid
  
  def to_s
    name
  end

end
