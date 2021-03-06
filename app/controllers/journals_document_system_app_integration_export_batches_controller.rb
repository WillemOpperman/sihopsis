class JournalsDocumentSystemAppIntegrationExportBatchesController < ApplicationController
  before_action :set_journals_document_system_app_integration_export_batch, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journals_document_system_app_integration_export_batches = JournalsDocumentSystemAppIntegrationExportBatch.all
    respond_with(@journals_document_system_app_integration_export_batches)
  end

  def show
    respond_with(@journals_document_system_app_integration_export_batch)
  end

  def new
    @journals_document_system_app_integration_export_batch = JournalsDocumentSystemAppIntegrationExportBatch.new
    respond_with(@journals_document_system_app_integration_export_batch)
  end

  def edit
  end

  def create
    @journals_document_system_app_integration_export_batch = JournalsDocumentSystemAppIntegrationExportBatch.new(journals_document_system_app_integration_export_batch_params)
    @journals_document_system_app_integration_export_batch.save
    respond_with(@journals_document_system_app_integration_export_batch)
  end

  def update
    @journals_document_system_app_integration_export_batch.update(journals_document_system_app_integration_export_batch_params)
    respond_with(@journals_document_system_app_integration_export_batch)
  end

  def destroy
    @journals_document_system_app_integration_export_batch.destroy
    respond_with(@journals_document_system_app_integration_export_batch)
  end

  private
    def set_journals_document_system_app_integration_export_batch
      @journals_document_system_app_integration_export_batch = JournalsDocumentSystemAppIntegrationExportBatch.find(params[:id])
    end

    def journals_document_system_app_integration_export_batch_params
      params.require(:journals_document_system_app_integration_export_batch).permit(:uid, :code, :journals_document_id, :is_success, :result_message)
    end
end
