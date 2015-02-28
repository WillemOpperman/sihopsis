class CampaignSchedulePlacement < ActiveRecord::Base

  has_paper_trail

    belongs_to :media_category
    belongs_to :campaign
    belongs_to :campaign_schedule
    belongs_to :client_product
    belongs_to :client_product_sub
    belongs_to :client_contact
    belongs_to :creative_agency
    belongs_to :creative_agency_contact
    belongs_to :media_agency_client
    belongs_to :media_agency_client_contact
    belongs_to :natural_client
    belongs_to :natural_client_product
    belongs_to :natural_client_contact
    belongs_to :media_space
    belongs_to :business_unit
    belongs_to :media_space_section
    belongs_to :media_space_part
    belongs_to :media_category_size
    belongs_to :media_category_format
    belongs_to :media_frequency_cap_type
    belongs_to :supplier
    belongs_to :supplier_contact
    belongs_to :owner_user
    belongs_to :manager_user
    belongs_to :currency
    belongs_to :rate_type
    belongs_to :rate_card_line
    belongs_to :cost_type
  
    attr_accessible :actual_cost_nett, :actual_cost_nett_home, :client_billable_gross_amount, :client_billable_gross_home_amount, :client_billable_nett_amount, :client_billable_nett_home_amount, :client_invoiced_to_date_cost_commission_home_amount, :client_invoiced_to_date_cost_gross_home_amount, :client_invoiced_to_date_cost_nett_home_amount, :client_invoiced_to_date_fees_amount, :client_invoiced_to_date_fees_home_amount, :client_invoiced_to_date_gross_amount, :client_invoiced_to_date_gross_home_amount, :client_invoiced_to_date_nett_amount, :client_invoiced_to_date_nett_home_amount, :client_invoiced_to_date_production_costs_with_margin_amount, :client_invoiced_to_date_production_costs_with_margin_home_amount, :code, :code_external, :commission_agency_amount, :commission_agency_home_amount, :commission_agency_percentage, :commission_supplier_amount, :commission_supplier_home_amount, :commission_supplier_percentage, :cost_billing_commission_home_difference_amount, :cost_billing_gross_home_difference_amount, :cost_billing_nett_home_difference_amount, :cost_gross, :cost_gross_home, :cost_nett, :cost_nett_home, :effective_discount_amount, :effective_discount_home_amount, :effective_discount_percentage, :effective_discount_to_client_amount, :effective_discount_to_client_home_amount, :effective_discount_to_client_percentage, :effective_intermediary_margin_amount, :effective_intermediary_margin_home_amount, :effective_intermediary_margin_percentage, :effective_production_cost_margin_percentage, :exchange_rate, :fees, :fees_home, :fees_to_date, :fees_to_date_home, :minimum_intermediary_margin_amount, :minimum_intermediary_margin_home_amount, :minimum_intermediary_margin_percentage, :ordered_production_cost_amount_to_date, :ordered_production_cost_amount_to_date_home, :production_client_billable_amount, :production_client_billable_home_amount, :production_client_invoiced_to_date_amount, :production_client_invoiced_to_date_home_amount, :production_cost_amount, :production_cost_home_amount, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_cost_margin_to_date_amount, :production_cost_margin_to_date_home_amount, :quantity, :quantity_per_unit_rate, :rate_card_cost_gross, :rate_card_cost_gross_home, :rate_card_cost_nett, :rate_card_cost_nett_home, :rate_card_unit_cost_gross, :rate_card_unit_cost_gross_home, :rate_card_unit_cost_nett, :rate_card_unit_cost_nett_home, :supplier_invoiced_actual_cost_nett_to_date_amount, :supplier_invoiced_actual_cost_nett_to_date_home_amount, :supplier_invoiced_cost_commission_to_date_amount, :supplier_invoiced_cost_commission_to_date_home_amount, :supplier_invoiced_cost_nett_to_date_amount, :supplier_invoiced_cost_nett_to_date_home_amount, :supplier_invoiced_cost_to_date_amount, :supplier_invoiced_cost_to_date_home_amount, :supplier_invoiced_intermediary_margin_to_date_amount, :supplier_invoiced_intermediary_margin_to_date_home_amount, :supplier_invoiced_production_cost_to_date_amount, :supplier_invoiced_production_cost_to_date_home_amount, :supplier_invoiced_provision_gross_home_amount, :uid
  
  def to_s
    "CampaignSchedulePlacement #{id}"
  end

end
