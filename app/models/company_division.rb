class CompanyDivision < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :default_media_category
    belongs_to :contact
    belongs_to :default_media_region
    belongs_to :default_tax_type
    belongs_to :default_agency_commission_type
    belongs_to :g_l_acc_no_output_tax_type
    belongs_to :g_l_acc_no_output_adjustment_tax_type
    belongs_to :default_currency
  
    attr_accessible :account_default_media_fees_alt_ref_no, :account_default_work_type_alt_ref_no, :allow_overpay_of_placement, :bank_details, :c_eis_sync_date, :chase_list_footer, :client_contract_footer, :client_cost_estimate_footer, :client_financial_document_footer, :client_purchase_order_footer, :code, :company_registration_no, :default_agency_commission_percentage, :e_mail, :e_mail1, :e_mail2, :fax_number, :fax_number1, :fax_number2, :financial_year_end, :g_l_acc_no_cost_of_sales, :g_l_acc_no_creditors_control, :g_l_acc_no_deferred_commission, :g_l_acc_no_inter_comp, :g_l_acc_no_local_inter_comp, :g_l_acc_no_provision_for_costs, :g_l_acc_no_purchases, :g_l_acc_no_receivable_credit_control, :g_l_acc_no_receivable_credit_control3, :g_l_acc_no_sales, :g_l_acc_no_stock, :is_active, :is_campaign_order_no_copied_to_schedule, :is_campaign_schedule_end_date_end_of_month, :is_campaign_schedule_placement_grouped_for_chase_list_wizard, :is_chase_list_required_to_create_production_purchase_order, :is_client_credit_profile_system_enabled, :is_client_fees_system_enabled, :is_discount_cards_system_enabled, :is_forex_system_enabled, :is_global_agency_commission_enforced, :is_m_p_with_order_no_cancel_allowed, :is_order_no_required_for_billing_default, :is_placement_book_only_allowed_if_product_region_specified, :is_placement_exchange_rate_updated_b4_billing, :is_placement_order_no_locked, :is_placement_size_and_columns_controlled, :is_quantity_for_display_auto_maintained, :is_rate_cards_system_enabled, :is_supplier_financial_document_finalize_required, :is_test_division, :item_no_suffix, :legal_name, :legal_notice, :logo_alignment, :logo_file_name, :logo_resizing, :m_i_create_by_media_product, :m_i_show_only_revised_placements, :m_p_with_order_no_cancel_allowed_exception, :name, :notes, :payment_terms_default, :phone_number, :phone_number2, :phone_number3, :phone_number4, :physical_address, :physical_address1, :physical_address2, :postal_address, :postal_address1, :postal_address2, :production_supplier_purchase_order_footer, :report_footer, :server_export_path, :supplier_order_footer, :supplier_order_request_footer, :tax_registration_no, :uid, :website
  
  def to_s
    name
  end

end
