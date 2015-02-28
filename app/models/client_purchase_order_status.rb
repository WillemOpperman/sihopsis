class ClientPurchaseOrderStatus < ActiveRecord::Base
attr_accessible :code, :eis_sync_date, :is_active, :is_approved, :is_cancelled, :is_default, :name, :uid

  def to_s
    name
end

end
