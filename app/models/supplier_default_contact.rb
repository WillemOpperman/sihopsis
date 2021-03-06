class SupplierDefaultContact < ActiveRecord::Base

  has_paper_trail

    belongs_to :supplier
    belongs_to :contact
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :is_active, :name, :uid
  
  def to_s
    name
  end

end
