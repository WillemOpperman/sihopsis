class SupplierReconStatusesController < ApplicationController
  before_action :set_supplier_recon_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_recon_statuses = SupplierReconStatus.all
    respond_with(@supplier_recon_statuses)
  end

  def show
    respond_with(@supplier_recon_status)
  end

  def new
    @supplier_recon_status = SupplierReconStatus.new
    respond_with(@supplier_recon_status)
  end

  def edit
  end

  def create
    @supplier_recon_status = SupplierReconStatus.new(supplier_recon_status_params)
    @supplier_recon_status.save
    respond_with(@supplier_recon_status)
  end

  def update
    @supplier_recon_status.update(supplier_recon_status_params)
    respond_with(@supplier_recon_status)
  end

  def destroy
    @supplier_recon_status.destroy
    respond_with(@supplier_recon_status)
  end

  private
    def set_supplier_recon_status
      @supplier_recon_status = SupplierReconStatus.find(params[:id])
    end

    def supplier_recon_status_params
      params.require(:supplier_recon_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_on_hold, :is_approved, :is_default, :eis_sync_date)
    end
end
