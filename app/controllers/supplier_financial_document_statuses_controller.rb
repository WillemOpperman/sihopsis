class SupplierFinancialDocumentStatusesController < ApplicationController
  before_action :set_supplier_financial_document_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_financial_document_statuses = SupplierFinancialDocumentStatus.all
    respond_with(@supplier_financial_document_statuses)
  end

  def show
    respond_with(@supplier_financial_document_status)
  end

  def new
    @supplier_financial_document_status = SupplierFinancialDocumentStatus.new
    respond_with(@supplier_financial_document_status)
  end

  def edit
  end

  def create
    @supplier_financial_document_status = SupplierFinancialDocumentStatus.new(supplier_financial_document_status_params)
    @supplier_financial_document_status.save
    respond_with(@supplier_financial_document_status)
  end

  def update
    @supplier_financial_document_status.update(supplier_financial_document_status_params)
    respond_with(@supplier_financial_document_status)
  end

  def destroy
    @supplier_financial_document_status.destroy
    respond_with(@supplier_financial_document_status)
  end

  private
    def set_supplier_financial_document_status
      @supplier_financial_document_status = SupplierFinancialDocumentStatus.find(params[:id])
    end

    def supplier_financial_document_status_params
      params.require(:supplier_financial_document_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_finalised, :is_on_hold, :is_approved, :is_default, :is_exported, :eis_sync_date)
    end
end
