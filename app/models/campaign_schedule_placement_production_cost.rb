class CampaignSchedulePlacementProductionCost < ActiveRecord::Base

  has_paper_trail

    belongs_to :campaign_schedule_placement
    belongs_to :supplier
    belongs_to :supplier_contact
    belongs_to :production_cost_type
    belongs_to :units
    belongs_to :tax_type
    belongs_to :currency
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :exchange_rate, :material_production_date, :notes, :ordered_production_cost_amount_to_date, :ordered_production_cost_amount_to_date_home, :production_client_billable_amount, :production_client_billable_home_amount, :production_client_billable_inc_tax_amount, :production_client_billable_inc_tax_home_amount, :production_client_invoiced_inc_tax_to_date_amount, :production_client_invoiced_inc_tax_to_date_home_amount, :production_client_invoiced_to_date_amount, :production_client_invoiced_to_date_home_amount, :production_cost_amount, :production_cost_home_amount, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_cost_margin_percentage, :production_cost_margin_to_date_amount, :production_cost_margin_to_date_home_amount, :quantity_per_unit_cost, :supplier_invoiced_production_cost_to_date_amount, :supplier_invoiced_production_cost_to_date_home_amount, :uid, :unit_cost_amount
  
  def to_s
    "CampaignSchedulePlacementProductionCost #{id}"
  end

end
