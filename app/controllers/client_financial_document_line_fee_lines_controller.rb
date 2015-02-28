class ClientFinancialDocumentLineFeeLinesController < ApplicationController
  before_action :set_client_financial_document_line_fee_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_document_line_fee_lines = ClientFinancialDocumentLineFeeLine.all
    respond_with(@client_financial_document_line_fee_lines)
  end

  def show
    respond_with(@client_financial_document_line_fee_line)
  end

  def new
    @client_financial_document_line_fee_line = ClientFinancialDocumentLineFeeLine.new
    respond_with(@client_financial_document_line_fee_line)
  end

  def edit
  end

  def create
    @client_financial_document_line_fee_line = ClientFinancialDocumentLineFeeLine.new(client_financial_document_line_fee_line_params)
    @client_financial_document_line_fee_line.save
    respond_with(@client_financial_document_line_fee_line)
  end

  def update
    @client_financial_document_line_fee_line.update(client_financial_document_line_fee_line_params)
    respond_with(@client_financial_document_line_fee_line)
  end

  def destroy
    @client_financial_document_line_fee_line.destroy
    respond_with(@client_financial_document_line_fee_line)
  end

  private
    def set_client_financial_document_line_fee_line
      @client_financial_document_line_fee_line = ClientFinancialDocumentLineFeeLine.find(params[:id])
    end

    def client_financial_document_line_fee_line_params
      params.require(:client_financial_document_line_fee_line).permit(:uid, :code, :client_financial_document_line_id, :campaign_schedule_placement_fee_line_id, :fee_amount, :fee_home_amount, :eis_sync_date)
    end
end
