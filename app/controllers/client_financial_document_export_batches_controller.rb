class ClientFinancialDocumentExportBatchesController < ApplicationController
  before_action :set_client_financial_document_export_batch, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_document_export_batches = ClientFinancialDocumentExportBatch.all
    respond_with(@client_financial_document_export_batches)
  end

  def show
    respond_with(@client_financial_document_export_batch)
  end

  def new
    @client_financial_document_export_batch = ClientFinancialDocumentExportBatch.new
    respond_with(@client_financial_document_export_batch)
  end

  def edit
  end

  def create
    @client_financial_document_export_batch = ClientFinancialDocumentExportBatch.new(client_financial_document_export_batch_params)
    @client_financial_document_export_batch.save
    respond_with(@client_financial_document_export_batch)
  end

  def update
    @client_financial_document_export_batch.update(client_financial_document_export_batch_params)
    respond_with(@client_financial_document_export_batch)
  end

  def destroy
    @client_financial_document_export_batch.destroy
    respond_with(@client_financial_document_export_batch)
  end

  private
    def set_client_financial_document_export_batch
      @client_financial_document_export_batch = ClientFinancialDocumentExportBatch.find(params[:id])
    end

    def client_financial_document_export_batch_params
      params.require(:client_financial_document_export_batch).permit(:uid, :code, :client_financial_document_id, :is_success, :result_message)
    end
end
