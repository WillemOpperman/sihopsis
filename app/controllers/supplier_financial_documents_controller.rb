class SupplierFinancialDocumentsController < ApplicationController
  before_action :set_supplier_financial_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_financial_documents = SupplierFinancialDocument.all
    respond_with(@supplier_financial_documents)
  end

  def show
    respond_with(@supplier_financial_document)
  end

  def new
    @supplier_financial_document = SupplierFinancialDocument.new
    respond_with(@supplier_financial_document)
  end

  def edit
  end

  def create
    @supplier_financial_document = SupplierFinancialDocument.new(supplier_financial_document_params)
    @supplier_financial_document.save
    respond_with(@supplier_financial_document)
  end

  def update
    @supplier_financial_document.update(supplier_financial_document_params)
    respond_with(@supplier_financial_document)
  end

  def destroy
    @supplier_financial_document.destroy
    respond_with(@supplier_financial_document)
  end

  private
    def set_supplier_financial_document
      @supplier_financial_document = SupplierFinancialDocument.find(params[:id])
    end

    def supplier_financial_document_params
      params.require(:supplier_financial_document).permit(:uid, :code, :code_external, :company_id, :company_division_id, :supplier_id, :related_id, :media_category_id, :owner_user_id, :media_space_id, :media_space_part_name, :currency_id, :creation_source_id, :status_id, :communication_status_id, :actual_date, :posting_date, :range_start_date, :range_end_date, :tax_type_id, :exchange_rate, :payable_gross_amount, :payable_gross_home_amount, :payable_commission_amount, :payable_commission_home_amount, :payable_nett_amount, :payable_nett_home_amount, :payable_intermediary_margin_amount, :payable_intermediary_margin_home_amount, :payable_actual_nett_amount, :payable_actual_nett_home_amount, :payable_actual_nett_tax_amount, :payable_actual_nett_tax_home_amount, :payable_actual_nett_inc_tax_amount, :payable_actual_nett_inc_tax_home_amount, :wanted_gross_amount, :wanted_home_gross_amount, :wanted_commission_amount, :wanted_commission_home_amount, :wanted_nett_amount, :wanted_nett_home_amount, :wanted_intermediary_margin_amount, :wanted_intermediary_margin_home_amount, :wanted_actual_nett_amount, :wanted_actual_nett_home_amount, :wanted_actual_nett_tax_amount, :wanted_actual_nett_tax_home_amount, :wanted_actual_nett_inc_tax_amount, :wanted_actual_nett_inc_tax_home_amount, :recon_gross_amount, :recon_gross_home_amount, :recon_gross_tax_amount, :recon_gross_tax_home_amount, :recon_gross_inc_tax_amount, :recon_gross_inc_tax_home_amount, :recon_commission_percentage, :recon_commission_amount, :recon_commission_home_amount, :recon_nett_amount, :recon_nett_home_amount, :recon_nett_tax_amount, :recon_nett_tax_home_amount, :recon_nett_inc_tax_amount, :recon_nett_inc_tax_home_amount, :recon_intermediary_margin_percentage, :recon_intermediary_margin_amount, :recon_intermediary_margin_home_amount, :recon_actual_nett_amount, :recon_actual_nett_home_amount, :recon_actual_nett_tax_amount, :recon_actual_nett_tax_home_amount, :recon_actual_nett_inc_tax_amount, :recon_actual_nett_inc_tax_home_amount, :provision_gross_home_amount, :provision_commission_home_amount, :provision_nett_home_amount, :notes, :campaign_schedule_placement_code, :campaign_code, :media_space_contract_code, :client_invoice_code, :advert_no, :supplier_order_request_code, :supplier_order_code, :client_search_name, :status_reason, :grid_layout_x_m_l, :eis_sync_date)
    end
end
