json.array!(@client_financial_document_lines) do |client_financial_document_line|
  json.extract! client_financial_document_line, :id, :uid, :code, :client_financial_document_id, :campaign_schedule_placement_id, :client_commission_deal_id, :client_billing_setting_line_id, :media_category_id, :cost_gross_amount, :cost_commission_amount, :cost_nett_amount, :cost_gross_home_amount, :cost_commission_home_amount, :cost_nett_home_amount, :production_costs_amount, :production_costs_home_amount, :production_costs_margin_amount, :production_costs_margin_home_amount, :gross_amount, :commission_amount, :fees_amount, :production_costs_with_margin_amount, :nett_amount, :tax_amount, :nett_inc_tax_amount, :gross_home_amount, :commission_home_amount, :fees_home_amount, :production_costs_with_margin_home_amount, :nett_home_amount, :nett_inc_tax_home_amount, :eis_sync_date, :rate_card_unit_cost_gross, :rate_card_unit_cost_gross_home, :rate_card_unit_cost_nett, :rate_card_unit_cost_nett_home, :rate_card_cost_gross, :rate_card_cost_gross_home, :rate_card_cost_nett, :rate_card_cost_nett_home, :commission_agency_amount, :commission_agency_home_amount, :effective_discount_amount, :effective_discount_home_amount, :effective_discount_to_client_amount, :effective_discount_to_client_home_amount, :cost_minimum_intermediary_margin_percentage, :cost_minimum_intermediary_margin_amount, :cost_minimum_intermediary_margin_home_amount, :actual_cost_nett, :actual_cost_nett_home, :additional_company_cost_centre_id, :company_cost_centre_id, :notes
  json.url client_financial_document_line_url(client_financial_document_line, format: :json)
end
