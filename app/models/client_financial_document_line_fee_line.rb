class ClientFinancialDocumentLineFeeLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_financial_document_line
    belongs_to :campaign_schedule_placement_fee_line
  
    attr_accessible :code, :eis_sync_date, :fee_amount, :fee_home_amount, :uid
  
  def to_s
    "ClientFinancialDocumentLineFeeLine #{id}"
  end

end
