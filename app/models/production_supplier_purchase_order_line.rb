class ProductionSupplierPurchaseOrderLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :production_supplier_purchase_order
    belongs_to :campaign_schedule_placement_production_cost
    belongs_to :units
  
    attr_accessible :code, :eis_sync_date, :notes, :percentage_ordered, :production_cost_amount, :production_cost_home_amount, :uid, :unit_cost_amount
  
  def to_s
    "ProductionSupplierPurchaseOrderLine #{id}"
  end

end
