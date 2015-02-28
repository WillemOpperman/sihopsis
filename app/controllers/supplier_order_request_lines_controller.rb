class SupplierOrderRequestLinesController < ApplicationController
  before_action :set_supplier_order_request_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_order_request_lines = SupplierOrderRequestLine.all
    respond_with(@supplier_order_request_lines)
  end

  def show
    respond_with(@supplier_order_request_line)
  end

  def new
    @supplier_order_request_line = SupplierOrderRequestLine.new
    respond_with(@supplier_order_request_line)
  end

  def edit
  end

  def create
    @supplier_order_request_line = SupplierOrderRequestLine.new(supplier_order_request_line_params)
    @supplier_order_request_line.save
    respond_with(@supplier_order_request_line)
  end

  def update
    @supplier_order_request_line.update(supplier_order_request_line_params)
    respond_with(@supplier_order_request_line)
  end

  def destroy
    @supplier_order_request_line.destroy
    respond_with(@supplier_order_request_line)
  end

  private
    def set_supplier_order_request_line
      @supplier_order_request_line = SupplierOrderRequestLine.find(params[:id])
    end

    def supplier_order_request_line_params
      params.require(:supplier_order_request_line).permit(:uid, :code, :revision_no, :supplier_order_request_id, :campaign_schedule_placement_id, :order_gross_amount, :order_commission_amount, :order_nett_amount, :commission_percent, :eis_sync_date, :order_gross_amount_home, :order_commission_amount_home, :order_nett_amount_home, :is_active, :is_changed_in_current_revision, :revision_change_details, :change_reason, :notes)
    end
end
