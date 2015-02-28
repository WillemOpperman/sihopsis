class ClientFinancialDocumentLine < ActiveRecord::Base
  belongs_to :client_financial_document
  belongs_to :campaign_schedule_placement
  belongs_to :client_commission_deal
  belongs_to :client_billing_setting_line
  belongs_to :media_category
  belongs_to :additional_company_cost_centre
  belongs_to :company_cost_centre
attr_accessible :actual_cost_nett, :actual_cost_nett_home, :code, :commission_agency_amount, :commission_agency_home_amount, :commission_amount, :commission_home_amount, :cost_commission_amount, :cost_commission_home_amount, :cost_gross_amount, :cost_gross_home_amount, :cost_minimum_intermediary_margin_amount, :cost_minimum_intermediary_margin_home_amount, :cost_minimum_intermediary_margin_percentage, :cost_nett_amount, :cost_nett_home_amount, :effective_discount_amount, :effective_discount_home_amount, :effective_discount_to_client_amount, :effective_discount_to_client_home_amount, :eis_sync_date, :fees_amount, :fees_home_amount, :gross_amount, :gross_home_amount, :nett_amount, :nett_home_amount, :nett_inc_tax_amount, :nett_inc_tax_home_amount, :notes, :production_costs_amount, :production_costs_home_amount, :production_costs_margin_amount, :production_costs_margin_home_amount, :production_costs_with_margin_amount, :production_costs_with_margin_home_amount, :rate_card_cost_gross, :rate_card_cost_gross_home, :rate_card_cost_nett, :rate_card_cost_nett_home, :rate_card_unit_cost_gross, :rate_card_unit_cost_gross_home, :rate_card_unit_cost_nett, :rate_card_unit_cost_nett_home, :tax_amount, :uid

  def to_s
    "ClientFinancialDocumentLine #{id}"
end

end
