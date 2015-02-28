class ClientFinancialDocument < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :company_division
    belongs_to :client
    belongs_to :client_product
    belongs_to :contact
    belongs_to :campaign
    belongs_to :campaign_schedule
    belongs_to :owner_user
    belongs_to :currency
    belongs_to :creation_source
    belongs_to :status
    belongs_to :communication_status
    belongs_to :tax_type
    belongs_to :client_purchase_order
    belongs_to :company_cost_centre
  
    attr_accessible :actual_cost_nett, :actual_cost_nett_home, :actual_date, :code, :code_external, :commission_agency_amount, :commission_agency_home_amount, :commission_amount, :commission_home_amount, :cost_commission_amount, :cost_commission_home_amount, :cost_gross_amount, :cost_gross_home_amount, :cost_minimum_intermediary_margin_amount, :cost_minimum_intermediary_margin_home_amount, :cost_minimum_intermediary_margin_percentage, :cost_nett_amount, :cost_nett_home_amount, :effective_discount_amount, :effective_discount_home_amount, :effective_discount_to_client_amount, :effective_discount_to_client_home_amount, :eis_sync_date, :exchange_rate, :fees_amount, :fees_home_amount, :grid_layout_x_m_l, :gross_amount, :gross_home_amount, :nett_amount, :nett_home_amount, :nett_inc_tax_amount, :nett_inc_tax_home_amount, :notes, :posting_date, :production_costs_amount, :production_costs_home_amount, :production_costs_margin_amount, :production_costs_margin_home_amount, :production_costs_with_margin_amount, :production_costs_with_margin_home_amount, :rate_card_cost_gross, :rate_card_cost_gross_home, :rate_card_cost_nett, :rate_card_cost_nett_home, :rate_card_unit_cost_gross, :rate_card_unit_cost_gross_home, :rate_card_unit_cost_nett, :rate_card_unit_cost_nett_home, :status_reason, :tax_gross_amount, :tax_nett_amount, :uid
  
  def to_s
    "ClientFinancialDocument #{id}"
  end

end
