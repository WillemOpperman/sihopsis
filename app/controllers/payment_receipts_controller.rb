class PaymentReceiptsController < ApplicationController
  before_action :set_payment_receipt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @payment_receipts = PaymentReceipt.all
    respond_with(@payment_receipts)
  end

  def show
    respond_with(@payment_receipt)
  end

  def new
    @payment_receipt = PaymentReceipt.new
    respond_with(@payment_receipt)
  end

  def edit
  end

  def create
    @payment_receipt = PaymentReceipt.new(payment_receipt_params)
    @payment_receipt.save
    respond_with(@payment_receipt)
  end

  def update
    @payment_receipt.update(payment_receipt_params)
    respond_with(@payment_receipt)
  end

  def destroy
    @payment_receipt.destroy
    respond_with(@payment_receipt)
  end

  private
    def set_payment_receipt
      @payment_receipt = PaymentReceipt.find(params[:id])
    end

    def payment_receipt_params
      params.require(:payment_receipt).permit(:uid, :code, :name, :payment_amount, :creation_source_id, :eis_sync_date)
    end
end
