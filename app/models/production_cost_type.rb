class ProductionCostType < ActiveRecord::Base

  has_paper_trail

    belongs_to :currency
    belongs_to :supplier
    belongs_to :company
    belongs_to :company_division
    belongs_to :client
    belongs_to :client_product
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :is_active, :name, :production_cost_margin_percentage, :uid, :unit_cost_amount
  
  def to_s
    name
  end

end
