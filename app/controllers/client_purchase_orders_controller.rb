class ClientPurchaseOrdersController < ApplicationController
  before_action :set_client_purchase_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_purchase_orders = ClientPurchaseOrder.all
    respond_with(@client_purchase_orders)
  end

  def show
    respond_with(@client_purchase_order)
  end

  def new
    @client_purchase_order = ClientPurchaseOrder.new
    respond_with(@client_purchase_order)
  end

  def edit
  end

  def create
    @client_purchase_order = ClientPurchaseOrder.new(client_purchase_order_params)
    @client_purchase_order.save
    respond_with(@client_purchase_order)
  end

  def update
    @client_purchase_order.update(client_purchase_order_params)
    respond_with(@client_purchase_order)
  end

  def destroy
    @client_purchase_order.destroy
    respond_with(@client_purchase_order)
  end

  private
    def set_client_purchase_order
      @client_purchase_order = ClientPurchaseOrder.find(params[:id])
    end

    def client_purchase_order_params
      params.require(:client_purchase_order).permit(:uid, :code, :code_external, :description, :client_id, :client_product_id, :status_id, :gross_amount, :commission_amount, :nett_amount, :order_date, :order_expiry_date, :owner_user_id, :related_id, :creation_source_id, :eis_sync_date, :currency_id, :exchange_rate, :gross_home_amount, :commission_home_amount, :nett_home_amount, :pre_billing_manual_client_financial_document_code)
    end
end
