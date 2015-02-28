class ClientFinancialDocumentLineDiscountLinesController < ApplicationController
  before_action :set_client_financial_document_line_discount_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_document_line_discount_lines = ClientFinancialDocumentLineDiscountLine.all
    respond_with(@client_financial_document_line_discount_lines)
  end

  def show
    respond_with(@client_financial_document_line_discount_line)
  end

  def new
    @client_financial_document_line_discount_line = ClientFinancialDocumentLineDiscountLine.new
    respond_with(@client_financial_document_line_discount_line)
  end

  def edit
  end

  def create
    @client_financial_document_line_discount_line = ClientFinancialDocumentLineDiscountLine.new(client_financial_document_line_discount_line_params)
    @client_financial_document_line_discount_line.save
    respond_with(@client_financial_document_line_discount_line)
  end

  def update
    @client_financial_document_line_discount_line.update(client_financial_document_line_discount_line_params)
    respond_with(@client_financial_document_line_discount_line)
  end

  def destroy
    @client_financial_document_line_discount_line.destroy
    respond_with(@client_financial_document_line_discount_line)
  end

  private
    def set_client_financial_document_line_discount_line
      @client_financial_document_line_discount_line = ClientFinancialDocumentLineDiscountLine.find(params[:id])
    end

    def client_financial_document_line_discount_line_params
      params.require(:client_financial_document_line_discount_line).permit(:uid, :code, :client_financial_document_line_id, :discount_amount, :discount_home_amount, :discount_to_client_amount, :discount_to_client_home_amount, :eis_sync_date)
    end
end
