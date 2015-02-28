class SupplierFinancialDocumentSystemAppIntegrationExportBatchesController < ApplicationController
  before_action :set_supplier_financial_document_system_app_integration_export_batch, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_financial_document_system_app_integration_export_batches = SupplierFinancialDocumentSystemAppIntegrationExportBatch.all
    respond_with(@supplier_financial_document_system_app_integration_export_batches)
  end

  def show
    respond_with(@supplier_financial_document_system_app_integration_export_batch)
  end

  def new
    @supplier_financial_document_system_app_integration_export_batch = SupplierFinancialDocumentSystemAppIntegrationExportBatch.new
    respond_with(@supplier_financial_document_system_app_integration_export_batch)
  end

  def edit
  end

  def create
    @supplier_financial_document_system_app_integration_export_batch = SupplierFinancialDocumentSystemAppIntegrationExportBatch.new(supplier_financial_document_system_app_integration_export_batch_params)
    @supplier_financial_document_system_app_integration_export_batch.save
    respond_with(@supplier_financial_document_system_app_integration_export_batch)
  end

  def update
    @supplier_financial_document_system_app_integration_export_batch.update(supplier_financial_document_system_app_integration_export_batch_params)
    respond_with(@supplier_financial_document_system_app_integration_export_batch)
  end

  def destroy
    @supplier_financial_document_system_app_integration_export_batch.destroy
    respond_with(@supplier_financial_document_system_app_integration_export_batch)
  end

  private
    def set_supplier_financial_document_system_app_integration_export_batch
      @supplier_financial_document_system_app_integration_export_batch = SupplierFinancialDocumentSystemAppIntegrationExportBatch.find(params[:id])
    end

    def supplier_financial_document_system_app_integration_export_batch_params
      params.require(:supplier_financial_document_system_app_integration_export_batch).permit(:uid, :code, :supplier_financial_document_id, :is_success, :result_message)
    end
end
