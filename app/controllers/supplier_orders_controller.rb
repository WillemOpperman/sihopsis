class SupplierOrdersController < ApplicationController
  before_action :set_supplier_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_orders = SupplierOrder.all
    respond_with(@supplier_orders)
  end

  def show
    respond_with(@supplier_order)
  end

  def new
    @supplier_order = SupplierOrder.new
    respond_with(@supplier_order)
  end

  def edit
  end

  def create
    @supplier_order = SupplierOrder.new(supplier_order_params)
    @supplier_order.save
    respond_with(@supplier_order)
  end

  def update
    @supplier_order.update(supplier_order_params)
    respond_with(@supplier_order)
  end

  def destroy
    @supplier_order.destroy
    respond_with(@supplier_order)
  end

  private
    def set_supplier_order
      @supplier_order = SupplierOrder.find(params[:id])
    end

    def supplier_order_params
      params.require(:supplier_order).permit(:uid, :code, :code_external, :company_division_id, :campaign_schedule_id, :supplier_id, :media_space_id, :contact_id, :communication_status_id, :creation_source_id, :revision_no, :order_gross_amount, :order_commission_amount, :order_nett_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :eis_sync_date, :order_gross_amount_home, :order_commission_amount_home, :order_nett_amount_home, :tax_gross_amount_home, :tax_nett_amount_home, :exchange_rate, :currency_id, :status_id, :order_nett_inc_tax_amount)
    end
end
