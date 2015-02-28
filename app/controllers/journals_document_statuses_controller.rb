class JournalsDocumentStatusesController < ApplicationController
  before_action :set_journals_document_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @journals_document_statuses = JournalsDocumentStatus.all
    respond_with(@journals_document_statuses)
  end

  def show
    respond_with(@journals_document_status)
  end

  def new
    @journals_document_status = JournalsDocumentStatus.new
    respond_with(@journals_document_status)
  end

  def edit
  end

  def create
    @journals_document_status = JournalsDocumentStatus.new(journals_document_status_params)
    @journals_document_status.save
    respond_with(@journals_document_status)
  end

  def update
    @journals_document_status.update(journals_document_status_params)
    respond_with(@journals_document_status)
  end

  def destroy
    @journals_document_status.destroy
    respond_with(@journals_document_status)
  end

  private
    def set_journals_document_status
      @journals_document_status = JournalsDocumentStatus.find(params[:id])
    end

    def journals_document_status_params
      params.require(:journals_document_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :creation_source_id, :eis_sync_date, :is_exported)
    end
end
