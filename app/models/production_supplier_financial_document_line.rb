class ProductionSupplierFinancialDocumentLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :production_supplier_financial_document
    belongs_to :production_supplier_purchase_order_line
    belongs_to :wanted_units
    belongs_to :units
  
    attr_accessible :code, :eis_sync_date, :notes, :production_cost_amount, :production_cost_home_amount, :production_wanted_cost_amount, :production_wanted_cost_home_amount, :uid, :unit_cost_amount, :wanted_unit_cost_amount
  
  def to_s
    "ProductionSupplierFinancialDocumentLine #{id}"
  end

end
