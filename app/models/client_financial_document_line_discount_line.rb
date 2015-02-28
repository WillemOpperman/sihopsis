class ClientFinancialDocumentLineDiscountLine < ActiveRecord::Base
  belongs_to :client_financial_document_line
attr_accessible :code, :discount_amount, :discount_home_amount, :discount_to_client_amount, :discount_to_client_home_amount, :eis_sync_date, :uid

  def to_s
    "ClientFinancialDocumentLineDiscountLine #{id}"
end

end
