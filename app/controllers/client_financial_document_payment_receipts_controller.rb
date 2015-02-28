class ClientFinancialDocumentPaymentReceiptsController < ApplicationController
  before_action :set_client_financial_document_payment_receipt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_document_payment_receipts = ClientFinancialDocumentPaymentReceipt.all
    respond_with(@client_financial_document_payment_receipts)
  end

  def show
    respond_with(@client_financial_document_payment_receipt)
  end

  def new
    @client_financial_document_payment_receipt = ClientFinancialDocumentPaymentReceipt.new
    respond_with(@client_financial_document_payment_receipt)
  end

  def edit
  end

  def create
    @client_financial_document_payment_receipt = ClientFinancialDocumentPaymentReceipt.new(client_financial_document_payment_receipt_params)
    @client_financial_document_payment_receipt.save
    respond_with(@client_financial_document_payment_receipt)
  end

  def update
    @client_financial_document_payment_receipt.update(client_financial_document_payment_receipt_params)
    respond_with(@client_financial_document_payment_receipt)
  end

  def destroy
    @client_financial_document_payment_receipt.destroy
    respond_with(@client_financial_document_payment_receipt)
  end

  private
    def set_client_financial_document_payment_receipt
      @client_financial_document_payment_receipt = ClientFinancialDocumentPaymentReceipt.find(params[:id])
    end

    def client_financial_document_payment_receipt_params
      params.require(:client_financial_document_payment_receipt).permit(:uid, :code, :name, :client_financial_document_id, :payment_receipt_id, :creation_source_id, :eis_sync_date)
    end
end
