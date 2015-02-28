class SupplierReconLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :supplier_recon
    belongs_to :supplier
    belongs_to :supplier_financial_document_line
    belongs_to :production_supplier_financial_document_line
    belongs_to :creation_source
  
    attr_accessible :code, :eis_sync_date, :media_payable_actual_nett_amount, :media_payable_actual_nett_home_amount, :media_payable_commission_amount, :media_payable_commission_home_amount, :media_payable_gross_amount, :media_payable_gross_home_amount, :media_payable_intermediary_margin_amount, :media_payable_intermediary_margin_home_amount, :media_payable_nett_amount, :media_payable_nett_home_amount, :name, :notes, :payable_recon_amount, :payable_recon_home_amount, :payable_recon_inc_tax_amount, :payable_recon_inc_tax_home_amount, :payable_recon_tax_amount, :payable_recon_tax_home_amount, :production_cost_amount, :production_cost_home_amount, :uid, :wanted_media_payable_actual_nett_amount, :wanted_media_payable_actual_nett_home_amount, :wanted_media_payable_commission_amount, :wanted_media_payable_commission_home_amount, :wanted_media_payable_gross_amount, :wanted_media_payable_gross_home_amount, :wanted_media_payable_intermediary_margin_amount, :wanted_media_payable_intermediary_margin_home_amount, :wanted_media_payable_nett_amount, :wanted_media_payable_nett_home_amount, :wanted_production_cost_amount, :wanted_production_cost_home_amount, :wanted_recon_amount, :wanted_recon_home_amount, :wanted_recon_inc_tax_amount, :wanted_recon_inc_tax_home_amount, :wanted_recon_tax_amount, :wanted_recon_tax_home_amount
  
  def to_s
    name
  end

end
