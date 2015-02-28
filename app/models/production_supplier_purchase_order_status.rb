class ProductionSupplierPurchaseOrderStatus < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_active, :is_approved, :is_cancelled, :is_default, :name, :uid
  
  def to_s
    name
  end

end
