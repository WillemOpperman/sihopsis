class SupplierFinancialDocumentPaymentReceiptsController < ApplicationController
  before_action :set_supplier_financial_document_payment_receipt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_financial_document_payment_receipts = SupplierFinancialDocumentPaymentReceipt.all
    respond_with(@supplier_financial_document_payment_receipts)
  end

  def show
    respond_with(@supplier_financial_document_payment_receipt)
  end

  def new
    @supplier_financial_document_payment_receipt = SupplierFinancialDocumentPaymentReceipt.new
    respond_with(@supplier_financial_document_payment_receipt)
  end

  def edit
  end

  def create
    @supplier_financial_document_payment_receipt = SupplierFinancialDocumentPaymentReceipt.new(supplier_financial_document_payment_receipt_params)
    @supplier_financial_document_payment_receipt.save
    respond_with(@supplier_financial_document_payment_receipt)
  end

  def update
    @supplier_financial_document_payment_receipt.update(supplier_financial_document_payment_receipt_params)
    respond_with(@supplier_financial_document_payment_receipt)
  end

  def destroy
    @supplier_financial_document_payment_receipt.destroy
    respond_with(@supplier_financial_document_payment_receipt)
  end

  private
    def set_supplier_financial_document_payment_receipt
      @supplier_financial_document_payment_receipt = SupplierFinancialDocumentPaymentReceipt.find(params[:id])
    end

    def supplier_financial_document_payment_receipt_params
      params.require(:supplier_financial_document_payment_receipt).permit(:uid, :code, :name, :supplier_financial_document_id, :payment_receipt_id, :creation_source_id, :eis_sync_date)
    end
end
