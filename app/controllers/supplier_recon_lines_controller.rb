class SupplierReconLinesController < ApplicationController
  before_action :set_supplier_recon_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_recon_lines = SupplierReconLine.all
    respond_with(@supplier_recon_lines)
  end

  def show
    respond_with(@supplier_recon_line)
  end

  def new
    @supplier_recon_line = SupplierReconLine.new
    respond_with(@supplier_recon_line)
  end

  def edit
  end

  def create
    @supplier_recon_line = SupplierReconLine.new(supplier_recon_line_params)
    @supplier_recon_line.save
    respond_with(@supplier_recon_line)
  end

  def update
    @supplier_recon_line.update(supplier_recon_line_params)
    respond_with(@supplier_recon_line)
  end

  def destroy
    @supplier_recon_line.destroy
    respond_with(@supplier_recon_line)
  end

  private
    def set_supplier_recon_line
      @supplier_recon_line = SupplierReconLine.find(params[:id])
    end

    def supplier_recon_line_params
      params.require(:supplier_recon_line).permit(:uid, :code, :name, :supplier_recon_id, :supplier_id, :supplier_financial_document_line_id, :production_supplier_financial_document_line_id, :notes, :media_payable_gross_amount, :media_payable_gross_home_amount, :media_payable_commission_amount, :media_payable_commission_home_amount, :media_payable_nett_amount, :media_payable_nett_home_amount, :media_payable_intermediary_margin_amount, :media_payable_intermediary_margin_home_amount, :media_payable_actual_nett_amount, :media_payable_actual_nett_home_amount, :production_cost_amount, :production_cost_home_amount, :payable_recon_amount, :payable_recon_home_amount, :payable_recon_tax_amount, :payable_recon_tax_home_amount, :payable_recon_inc_tax_amount, :payable_recon_inc_tax_home_amount, :wanted_media_payable_gross_amount, :wanted_media_payable_gross_home_amount, :wanted_media_payable_commission_amount, :wanted_media_payable_commission_home_amount, :wanted_media_payable_nett_amount, :wanted_media_payable_nett_home_amount, :wanted_media_payable_intermediary_margin_amount, :wanted_media_payable_intermediary_margin_home_amount, :wanted_media_payable_actual_nett_amount, :wanted_media_payable_actual_nett_home_amount, :wanted_production_cost_amount, :wanted_production_cost_home_amount, :wanted_recon_amount, :wanted_recon_home_amount, :wanted_recon_tax_amount, :wanted_recon_tax_home_amount, :wanted_recon_inc_tax_amount, :wanted_recon_inc_tax_home_amount, :creation_source_id, :eis_sync_date)
    end
end
