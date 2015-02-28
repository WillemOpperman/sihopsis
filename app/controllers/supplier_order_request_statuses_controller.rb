class SupplierOrderRequestStatusesController < ApplicationController
  before_action :set_supplier_order_request_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_order_request_statuses = SupplierOrderRequestStatus.all
    respond_with(@supplier_order_request_statuses)
  end

  def show
    respond_with(@supplier_order_request_status)
  end

  def new
    @supplier_order_request_status = SupplierOrderRequestStatus.new
    respond_with(@supplier_order_request_status)
  end

  def edit
  end

  def create
    @supplier_order_request_status = SupplierOrderRequestStatus.new(supplier_order_request_status_params)
    @supplier_order_request_status.save
    respond_with(@supplier_order_request_status)
  end

  def update
    @supplier_order_request_status.update(supplier_order_request_status_params)
    respond_with(@supplier_order_request_status)
  end

  def destroy
    @supplier_order_request_status.destroy
    respond_with(@supplier_order_request_status)
  end

  private
    def set_supplier_order_request_status
      @supplier_order_request_status = SupplierOrderRequestStatus.find(params[:id])
    end

    def supplier_order_request_status_params
      params.require(:supplier_order_request_status).permit(:uid, :code, :name, :is_status_active, :is_issued, :is_cancelled, :is_default, :is_active, :creation_source_id, :eis_sync_date)
    end
end
