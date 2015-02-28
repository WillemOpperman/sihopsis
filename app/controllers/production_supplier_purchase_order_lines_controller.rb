class ProductionSupplierPurchaseOrderLinesController < ApplicationController
  before_action :set_production_supplier_purchase_order_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_supplier_purchase_order_lines = ProductionSupplierPurchaseOrderLine.all
    respond_with(@production_supplier_purchase_order_lines)
  end

  def show
    respond_with(@production_supplier_purchase_order_line)
  end

  def new
    @production_supplier_purchase_order_line = ProductionSupplierPurchaseOrderLine.new
    respond_with(@production_supplier_purchase_order_line)
  end

  def edit
  end

  def create
    @production_supplier_purchase_order_line = ProductionSupplierPurchaseOrderLine.new(production_supplier_purchase_order_line_params)
    @production_supplier_purchase_order_line.save
    respond_with(@production_supplier_purchase_order_line)
  end

  def update
    @production_supplier_purchase_order_line.update(production_supplier_purchase_order_line_params)
    respond_with(@production_supplier_purchase_order_line)
  end

  def destroy
    @production_supplier_purchase_order_line.destroy
    respond_with(@production_supplier_purchase_order_line)
  end

  private
    def set_production_supplier_purchase_order_line
      @production_supplier_purchase_order_line = ProductionSupplierPurchaseOrderLine.find(params[:id])
    end

    def production_supplier_purchase_order_line_params
      params.require(:production_supplier_purchase_order_line).permit(:uid, :code, :production_supplier_purchase_order_id, :campaign_schedule_placement_production_cost_id, :percentage_ordered, :unit_cost_amount, :units_id, :production_cost_amount, :production_cost_home_amount, :notes, :eis_sync_date)
    end
end
