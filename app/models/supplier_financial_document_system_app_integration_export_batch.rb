class SupplierFinancialDocumentSystemAppIntegrationExportBatch < ActiveRecord::Base
  belongs_to :supplier_financial_document
attr_accessible :code, :is_success, :result_message, :uid

  def to_s
    "SupplierFinancialDocumentSystemAppIntegrationExportBatch #{id}"
end

end
