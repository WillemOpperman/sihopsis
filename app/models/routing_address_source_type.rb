class RoutingAddressSourceType < ActiveRecord::Base
  belongs_to :company
attr_accessible :code, :eis_sync_date, :is_branded, :name, :uid

  def to_s
    name
end

end
