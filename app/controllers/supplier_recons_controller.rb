class SupplierReconsController < ApplicationController
  before_action :set_supplier_recon, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_recons = SupplierRecon.all
    respond_with(@supplier_recons)
  end

  def show
    respond_with(@supplier_recon)
  end

  def new
    @supplier_recon = SupplierRecon.new
    respond_with(@supplier_recon)
  end

  def edit
  end

  def create
    @supplier_recon = SupplierRecon.new(supplier_recon_params)
    @supplier_recon.save
    respond_with(@supplier_recon)
  end

  def update
    @supplier_recon.update(supplier_recon_params)
    respond_with(@supplier_recon)
  end

  def destroy
    @supplier_recon.destroy
    respond_with(@supplier_recon)
  end

  private
    def set_supplier_recon
      @supplier_recon = SupplierRecon.find(params[:id])
    end

    def supplier_recon_params
      params.require(:supplier_recon).permit(:uid, :code, :name, :supplier_id, :status_id, :media_payable_gross_amount, :media_payable_gross_home_amount, :media_payable_commission_amount, :media_payable_commission_home_amount, :media_payable_nett_amount, :media_payable_nett_home_amount, :media_payable_intermediary_margin_amount, :media_payable_intermediary_margin_home_amount, :media_payable_actual_nett_amount, :media_payable_actual_nett_home_amount, :production_cost_amount, :production_cost_home_amount, :payable_recon_amount, :payable_recon_home_amount, :payable_recon_tax_amount, :payable_recon_tax_home_amount, :payable_recon_inc_tax_amount, :payable_recon_inc_tax_home_amount, :wanted_media_payable_gross_amount, :wanted_media_payable_gross_home_amount, :wanted_media_payable_commission_amount, :wanted_media_payable_commission_home_amount, :wanted_media_payable_nett_amount, :wanted_media_payable_nett_home_amount, :wanted_media_payable_intermediary_margin_amount, :wanted_media_payable_intermediary_margin_home_amount, :wanted_media_payable_actual_nett_amount, :wanted_media_payable_actual_nett_home_amount, :wanted_production_cost_amount, :wanted_production_cost_home_amount, :wanted_recon_amount, :wanted_recon_home_amount, :wanted_recon_tax_amount, :wanted_recon_tax_home_amount, :wanted_recon_inc_tax_amount, :wanted_recon_inc_tax_home_amount, :creation_source_id, :communication_status_id, :eis_sync_date)
    end
end
