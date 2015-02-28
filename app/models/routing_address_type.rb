class RoutingAddressType < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :default_routing_address_source_type
  
    attr_accessible :code, :eis_sync_date, :name, :uid
  
  def to_s
    name
  end

end
