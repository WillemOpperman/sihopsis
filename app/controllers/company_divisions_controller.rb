class CompanyDivisionsController < ApplicationController
  before_action :set_company_division, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @company_divisions = CompanyDivision.all
    respond_with(@company_divisions)
  end

  def show
    respond_with(@company_division)
  end

  def new
    @company_division = CompanyDivision.new
    respond_with(@company_division)
  end

  def edit
  end

  def create
    @company_division = CompanyDivision.new(company_division_params)
    @company_division.save
    respond_with(@company_division)
  end

  def update
    @company_division.update(company_division_params)
    respond_with(@company_division)
  end

  def destroy
    @company_division.destroy
    respond_with(@company_division)
  end

  private
    def set_company_division
      @company_division = CompanyDivision.find(params[:id])
    end

    def company_division_params
      params.require(:company_division).permit(:uid, :code, :name, :legal_name, :company_id, :default_media_category_id, :item_no_suffix, :is_active, :is_test_division, :contact_id, :default_media_region_id, :phone_number, :phone_number2, :fax_number, :e_mail, :website, :postal_address, :physical_address, :company_registration_no, :tax_registration_no, :default_tax_type_id, :default_agency_commission_type_id, :default_agency_commission_percentage, :bank_details, :payment_terms_default, :notes, :report_footer, :g_l_acc_no_sales, :g_l_acc_no_purchases, :g_l_acc_no_creditors_control, :g_l_acc_no_receivable_credit_control, :g_l_acc_no_provision_for_costs, :g_l_acc_no_deferred_commission, :g_l_acc_no_output_tax_type_id, :g_l_acc_no_output_adjustment_tax_type_id, :g_l_acc_no_inter_comp, :g_l_acc_no_local_inter_comp, :g_l_acc_no_receivable_credit_control3, :g_l_acc_no_cost_of_sales, :g_l_acc_no_stock, :account_default_work_type_alt_ref_no, :account_default_media_fees_alt_ref_no, :logo_file_name, :logo_alignment, :logo_resizing, :m_i_show_only_revised_placements, :m_i_create_by_media_product, :is_m_p_with_order_no_cancel_allowed, :m_p_with_order_no_cancel_allowed_exception, :is_placement_book_only_allowed_if_product_region_specified, :is_placement_exchange_rate_updated_b4_billing, :is_placement_size_and_columns_controlled, :is_placement_order_no_locked, :is_campaign_order_no_copied_to_schedule, :is_order_no_required_for_billing_default, :is_client_credit_profile_system_enabled, :default_currency_id, :financial_year_end, :is_forex_system_enabled, :is_client_fees_system_enabled, :is_rate_cards_system_enabled, :is_discount_cards_system_enabled, :is_global_agency_commission_enforced, :is_supplier_financial_document_finalize_required, :is_chase_list_required_to_create_production_purchase_order, :c_eis_sync_date, :allow_overpay_of_placement, :is_campaign_schedule_end_date_end_of_month, :server_export_path, :client_financial_document_footer, :client_cost_estimate_footer, :legal_notice, :client_purchase_order_footer, :production_supplier_purchase_order_footer, :supplier_order_request_footer, :supplier_order_footer, :is_quantity_for_display_auto_maintained, :chase_list_footer, :client_contract_footer, :postal_address1, :postal_address2, :physical_address1, :physical_address2, :phone_number3, :phone_number4, :fax_number1, :fax_number2, :e_mail1, :e_mail2, :is_campaign_schedule_placement_grouped_for_chase_list_wizard)
    end
end
