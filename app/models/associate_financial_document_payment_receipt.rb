class AssociateFinancialDocumentPaymentReceipt < ActiveRecord::Base
  belongs_to :associate_financial_document
  belongs_to :payment_receipt
  belongs_to :creation_source
attr_accessible :code, :eis_sync_date, :name, :uid

  def to_s
    name
end

end
