class ClientFinancialDocumentExportBatch < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_financial_document
  
    attr_accessible :code, :is_success, :result_message, :uid
  
  def to_s
    "ClientFinancialDocumentExportBatch #{id}"
  end

end
