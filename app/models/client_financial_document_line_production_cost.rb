class ClientFinancialDocumentLineProductionCost < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_financial_document_line
    belongs_to :campaign_schedule_placement_production_cost
  
    attr_accessible :code, :eis_sync_date, :production_cost_amount, :production_cost_home_amount, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_cost_with_margin_amount, :production_cost_with_margin_home_amount, :uid
  
  def to_s
    "ClientFinancialDocumentLineProductionCost #{id}"
  end

end
