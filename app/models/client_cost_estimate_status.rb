class ClientCostEstimateStatus < ActiveRecord::Base
attr_accessible :code, :eis_sync_date, :is_active, :is_approved, :is_cancelled, :is_default, :is_status_active, :name, :uid

  def to_s
    name
end

end
