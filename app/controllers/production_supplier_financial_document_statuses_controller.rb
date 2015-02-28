class ProductionSupplierFinancialDocumentStatusesController < ApplicationController
  before_action :set_production_supplier_financial_document_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_supplier_financial_document_statuses = ProductionSupplierFinancialDocumentStatus.all
    respond_with(@production_supplier_financial_document_statuses)
  end

  def show
    respond_with(@production_supplier_financial_document_status)
  end

  def new
    @production_supplier_financial_document_status = ProductionSupplierFinancialDocumentStatus.new
    respond_with(@production_supplier_financial_document_status)
  end

  def edit
  end

  def create
    @production_supplier_financial_document_status = ProductionSupplierFinancialDocumentStatus.new(production_supplier_financial_document_status_params)
    @production_supplier_financial_document_status.save
    respond_with(@production_supplier_financial_document_status)
  end

  def update
    @production_supplier_financial_document_status.update(production_supplier_financial_document_status_params)
    respond_with(@production_supplier_financial_document_status)
  end

  def destroy
    @production_supplier_financial_document_status.destroy
    respond_with(@production_supplier_financial_document_status)
  end

  private
    def set_production_supplier_financial_document_status
      @production_supplier_financial_document_status = ProductionSupplierFinancialDocumentStatus.find(params[:id])
    end

    def production_supplier_financial_document_status_params
      params.require(:production_supplier_financial_document_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_finalised, :is_approved, :is_default, :eis_sync_date)
    end
end
