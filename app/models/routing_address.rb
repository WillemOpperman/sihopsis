class RoutingAddress < ActiveRecord::Base
  belongs_to :company
attr_accessible :code, :eis_sync_date, :is_active, :name, :uid

  def to_s
    name
end

end
