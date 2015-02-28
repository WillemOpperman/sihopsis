class SupplierFinancialDocumentStatus < ActiveRecord::Base

  has_paper_trail

  
    attr_accessible :code, :eis_sync_date, :is_active, :is_approved, :is_cancelled, :is_default, :is_exported, :is_finalised, :is_on_hold, :name, :uid
  
  def to_s
    name
  end

end
