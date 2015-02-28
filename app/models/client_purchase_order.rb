class ClientPurchaseOrder < ActiveRecord::Base

  has_paper_trail

    belongs_to :client
    belongs_to :client_product
    belongs_to :status
    belongs_to :owner_user
    belongs_to :related
    belongs_to :creation_source
    belongs_to :currency
  
    attr_accessible :code, :code_external, :commission_amount, :commission_home_amount, :description, :eis_sync_date, :exchange_rate, :gross_amount, :gross_home_amount, :nett_amount, :nett_home_amount, :order_date, :order_expiry_date, :pre_billing_manual_client_financial_document_code, :uid
  
  def to_s
    "ClientPurchaseOrder #{id}"
  end

end
