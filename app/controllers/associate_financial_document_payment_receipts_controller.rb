class AssociateFinancialDocumentPaymentReceiptsController < ApplicationController
  before_action :set_associate_financial_document_payment_receipt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @associate_financial_document_payment_receipts = AssociateFinancialDocumentPaymentReceipt.all
    respond_with(@associate_financial_document_payment_receipts)
  end

  def show
    respond_with(@associate_financial_document_payment_receipt)
  end

  def new
    @associate_financial_document_payment_receipt = AssociateFinancialDocumentPaymentReceipt.new
    respond_with(@associate_financial_document_payment_receipt)
  end

  def edit
  end

  def create
    @associate_financial_document_payment_receipt = AssociateFinancialDocumentPaymentReceipt.new(associate_financial_document_payment_receipt_params)
    @associate_financial_document_payment_receipt.save
    respond_with(@associate_financial_document_payment_receipt)
  end

  def update
    @associate_financial_document_payment_receipt.update(associate_financial_document_payment_receipt_params)
    respond_with(@associate_financial_document_payment_receipt)
  end

  def destroy
    @associate_financial_document_payment_receipt.destroy
    respond_with(@associate_financial_document_payment_receipt)
  end

  private
    def set_associate_financial_document_payment_receipt
      @associate_financial_document_payment_receipt = AssociateFinancialDocumentPaymentReceipt.find(params[:id])
    end

    def associate_financial_document_payment_receipt_params
      params.require(:associate_financial_document_payment_receipt).permit(:uid, :code, :name, :associate_financial_document_id, :payment_receipt_id, :creation_source_id, :eis_sync_date)
    end
end
