class SupplierFinancialDocumentLinesController < ApplicationController
  before_action :set_supplier_financial_document_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_financial_document_lines = SupplierFinancialDocumentLine.all
    respond_with(@supplier_financial_document_lines)
  end

  def show
    respond_with(@supplier_financial_document_line)
  end

  def new
    @supplier_financial_document_line = SupplierFinancialDocumentLine.new
    respond_with(@supplier_financial_document_line)
  end

  def edit
  end

  def create
    @supplier_financial_document_line = SupplierFinancialDocumentLine.new(supplier_financial_document_line_params)
    @supplier_financial_document_line.save
    respond_with(@supplier_financial_document_line)
  end

  def update
    @supplier_financial_document_line.update(supplier_financial_document_line_params)
    respond_with(@supplier_financial_document_line)
  end

  def destroy
    @supplier_financial_document_line.destroy
    respond_with(@supplier_financial_document_line)
  end

  private
    def set_supplier_financial_document_line
      @supplier_financial_document_line = SupplierFinancialDocumentLine.find(params[:id])
    end

    def supplier_financial_document_line_params
      params.require(:supplier_financial_document_line).permit(:uid, :code, :supplier_financial_document_id, :campaign_schedule_placement_id, :payable_gross_amount, :payable_gross_home_amount, :payable_commission_amount, :payable_commission_home_amount, :payable_nett_amount, :payable_nett_home_amount, :payable_intermediary_margin_amount, :payable_intermediary_margin_home_amount, :payable_actual_nett_amount, :payable_actual_nett_home_amount, :wanted_gross_amount, :wanted_home_gross_amount, :wanted_commission_amount, :wanted_commission_home_amount, :wanted_nett_amount, :wanted_nett_home_amount, :wanted_intermediary_margin_amount, :wanted_intermediary_margin_home_amount, :wanted_actual_nett_amount, :wanted_actual_nett_home_amount, :provision_exchange_rate, :provision_gross_home_amount, :provision_commission_home_amount, :provision_nett_home_amount, :eis_sync_date, :additional_company_cost_centre_id, :company_cost_centre_id, :payable_intermediary_margin_percentage, :wanted_intermediary_margin_percentage)
    end
end
