class ProductionSupplierPurchaseOrdersController < ApplicationController
  before_action :set_production_supplier_purchase_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_supplier_purchase_orders = ProductionSupplierPurchaseOrder.all
    respond_with(@production_supplier_purchase_orders)
  end

  def show
    respond_with(@production_supplier_purchase_order)
  end

  def new
    @production_supplier_purchase_order = ProductionSupplierPurchaseOrder.new
    respond_with(@production_supplier_purchase_order)
  end

  def edit
  end

  def create
    @production_supplier_purchase_order = ProductionSupplierPurchaseOrder.new(production_supplier_purchase_order_params)
    @production_supplier_purchase_order.save
    respond_with(@production_supplier_purchase_order)
  end

  def update
    @production_supplier_purchase_order.update(production_supplier_purchase_order_params)
    respond_with(@production_supplier_purchase_order)
  end

  def destroy
    @production_supplier_purchase_order.destroy
    respond_with(@production_supplier_purchase_order)
  end

  private
    def set_production_supplier_purchase_order
      @production_supplier_purchase_order = ProductionSupplierPurchaseOrder.find(params[:id])
    end

    def production_supplier_purchase_order_params
      params.require(:production_supplier_purchase_order).permit(:uid, :code, :name, :campaign_schedule_id, :supplier_id, :contact_id, :status_id, :postal_address, :physical_address, :production_cost_amount, :production_cost_home_amount, :production_cost_tax_amount, :production_cost_tax_home_amount, :production_cost_inc_tax_amount, :production_cost_inc_tax_home_amount, :tax_type_id, :currency_id, :exchange_rate, :notes, :communication_status_id, :creation_source_id, :eis_sync_date)
    end
end
