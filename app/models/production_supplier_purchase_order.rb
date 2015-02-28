class ProductionSupplierPurchaseOrder < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule
    belongs_to :supplier
    belongs_to :contact
    belongs_to :status
    belongs_to :tax_type
    belongs_to :currency
    belongs_to :communication_status
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :exchange_rate, :name, :notes, :physical_address, :postal_address, :production_cost_amount, :production_cost_home_amount, :production_cost_inc_tax_amount, :production_cost_inc_tax_home_amount, :production_cost_tax_amount, :production_cost_tax_home_amount, :uid
  
  def to_s
    name
  end

end
