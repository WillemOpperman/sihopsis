class SupplierOrderRequestStatus < ActiveRecord::Base

  has_paper_trail

    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :is_active, :is_cancelled, :is_default, :is_issued, :is_status_active, :name, :uid
  
  def to_s
    name
  end

end
