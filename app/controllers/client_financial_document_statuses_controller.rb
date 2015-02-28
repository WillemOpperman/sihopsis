class ClientFinancialDocumentStatusesController < ApplicationController
  before_action :set_client_financial_document_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_document_statuses = ClientFinancialDocumentStatus.all
    respond_with(@client_financial_document_statuses)
  end

  def show
    respond_with(@client_financial_document_status)
  end

  def new
    @client_financial_document_status = ClientFinancialDocumentStatus.new
    respond_with(@client_financial_document_status)
  end

  def edit
  end

  def create
    @client_financial_document_status = ClientFinancialDocumentStatus.new(client_financial_document_status_params)
    @client_financial_document_status.save
    respond_with(@client_financial_document_status)
  end

  def update
    @client_financial_document_status.update(client_financial_document_status_params)
    respond_with(@client_financial_document_status)
  end

  def destroy
    @client_financial_document_status.destroy
    respond_with(@client_financial_document_status)
  end

  private
    def set_client_financial_document_status
      @client_financial_document_status = ClientFinancialDocumentStatus.find(params[:id])
    end

    def client_financial_document_status_params
      params.require(:client_financial_document_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :is_exported, :eis_sync_date)
    end
end
