class ProductionSupplierPurchaseOrderStatusesController < ApplicationController
  before_action :set_production_supplier_purchase_order_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_supplier_purchase_order_statuses = ProductionSupplierPurchaseOrderStatus.all
    respond_with(@production_supplier_purchase_order_statuses)
  end

  def show
    respond_with(@production_supplier_purchase_order_status)
  end

  def new
    @production_supplier_purchase_order_status = ProductionSupplierPurchaseOrderStatus.new
    respond_with(@production_supplier_purchase_order_status)
  end

  def edit
  end

  def create
    @production_supplier_purchase_order_status = ProductionSupplierPurchaseOrderStatus.new(production_supplier_purchase_order_status_params)
    @production_supplier_purchase_order_status.save
    respond_with(@production_supplier_purchase_order_status)
  end

  def update
    @production_supplier_purchase_order_status.update(production_supplier_purchase_order_status_params)
    respond_with(@production_supplier_purchase_order_status)
  end

  def destroy
    @production_supplier_purchase_order_status.destroy
    respond_with(@production_supplier_purchase_order_status)
  end

  private
    def set_production_supplier_purchase_order_status
      @production_supplier_purchase_order_status = ProductionSupplierPurchaseOrderStatus.find(params[:id])
    end

    def production_supplier_purchase_order_status_params
      params.require(:production_supplier_purchase_order_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date)
    end
end
