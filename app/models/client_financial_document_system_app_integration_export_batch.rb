class ClientFinancialDocumentSystemAppIntegrationExportBatch < ActiveRecord::Base
  belongs_to :client_financial_document
attr_accessible :code, :is_success, :result_message, :uid

  def to_s
    "ClientFinancialDocumentSystemAppIntegrationExportBatch #{id}"
end

end
