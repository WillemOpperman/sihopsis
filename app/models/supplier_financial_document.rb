class SupplierFinancialDocument < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :company_division
    belongs_to :supplier
    belongs_to :related
    belongs_to :media_category
    belongs_to :owner_user
    belongs_to :media_space
    belongs_to :currency
    belongs_to :creation_source
    belongs_to :status
    belongs_to :communication_status
    belongs_to :tax_type
  
    attr_accessible :actual_date, :advert_no, :campaign_code, :campaign_schedule_placement_code, :client_invoice_code, :client_search_name, :code, :code_external, :eis_sync_date, :exchange_rate, :grid_layout_x_m_l, :media_space_contract_code, :media_space_part_name, :notes, :payable_actual_nett_amount, :payable_actual_nett_home_amount, :payable_actual_nett_inc_tax_amount, :payable_actual_nett_inc_tax_home_amount, :payable_actual_nett_tax_amount, :payable_actual_nett_tax_home_amount, :payable_commission_amount, :payable_commission_home_amount, :payable_gross_amount, :payable_gross_home_amount, :payable_intermediary_margin_amount, :payable_intermediary_margin_home_amount, :payable_nett_amount, :payable_nett_home_amount, :posting_date, :provision_commission_home_amount, :provision_gross_home_amount, :provision_nett_home_amount, :range_end_date, :range_start_date, :recon_actual_nett_amount, :recon_actual_nett_home_amount, :recon_actual_nett_inc_tax_amount, :recon_actual_nett_inc_tax_home_amount, :recon_actual_nett_tax_amount, :recon_actual_nett_tax_home_amount, :recon_commission_amount, :recon_commission_home_amount, :recon_commission_percentage, :recon_gross_amount, :recon_gross_home_amount, :recon_gross_inc_tax_amount, :recon_gross_inc_tax_home_amount, :recon_gross_tax_amount, :recon_gross_tax_home_amount, :recon_intermediary_margin_amount, :recon_intermediary_margin_home_amount, :recon_intermediary_margin_percentage, :recon_nett_amount, :recon_nett_home_amount, :recon_nett_inc_tax_amount, :recon_nett_inc_tax_home_amount, :recon_nett_tax_amount, :recon_nett_tax_home_amount, :status_reason, :supplier_order_code, :supplier_order_request_code, :uid, :wanted_actual_nett_amount, :wanted_actual_nett_home_amount, :wanted_actual_nett_inc_tax_amount, :wanted_actual_nett_inc_tax_home_amount, :wanted_actual_nett_tax_amount, :wanted_actual_nett_tax_home_amount, :wanted_commission_amount, :wanted_commission_home_amount, :wanted_gross_amount, :wanted_home_gross_amount, :wanted_intermediary_margin_amount, :wanted_intermediary_margin_home_amount, :wanted_nett_amount, :wanted_nett_home_amount
  
  def to_s
    "SupplierFinancialDocument #{id}"
  end

end
