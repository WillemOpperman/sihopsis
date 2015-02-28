class ClientPurchaseOrderStatusesController < ApplicationController
  before_action :set_client_purchase_order_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_purchase_order_statuses = ClientPurchaseOrderStatus.all
    respond_with(@client_purchase_order_statuses)
  end

  def show
    respond_with(@client_purchase_order_status)
  end

  def new
    @client_purchase_order_status = ClientPurchaseOrderStatus.new
    respond_with(@client_purchase_order_status)
  end

  def edit
  end

  def create
    @client_purchase_order_status = ClientPurchaseOrderStatus.new(client_purchase_order_status_params)
    @client_purchase_order_status.save
    respond_with(@client_purchase_order_status)
  end

  def update
    @client_purchase_order_status.update(client_purchase_order_status_params)
    respond_with(@client_purchase_order_status)
  end

  def destroy
    @client_purchase_order_status.destroy
    respond_with(@client_purchase_order_status)
  end

  private
    def set_client_purchase_order_status
      @client_purchase_order_status = ClientPurchaseOrderStatus.find(params[:id])
    end

    def client_purchase_order_status_params
      params.require(:client_purchase_order_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date)
    end
end
