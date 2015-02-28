class SupplierFinancialDocumentExportBatch < ActiveRecord::Base

  has_paper_trail

    belongs_to :supplier_financial_document
  
    attr_accessible :code, :is_success, :result_message, :uid
  
  def to_s
    "SupplierFinancialDocumentExportBatch #{id}"
  end

end
