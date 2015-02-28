class SupplierFinancialDocumentLine < ActiveRecord::Base
  belongs_to :supplier_financial_document
  belongs_to :campaign_schedule_placement
  belongs_to :additional_company_cost_centre
  belongs_to :company_cost_centre
attr_accessible :code, :eis_sync_date, :payable_actual_nett_amount, :payable_actual_nett_home_amount, :payable_commission_amount, :payable_commission_home_amount, :payable_gross_amount, :payable_gross_home_amount, :payable_intermediary_margin_amount, :payable_intermediary_margin_home_amount, :payable_intermediary_margin_percentage, :payable_nett_amount, :payable_nett_home_amount, :provision_commission_home_amount, :provision_exchange_rate, :provision_gross_home_amount, :provision_nett_home_amount, :uid, :wanted_actual_nett_amount, :wanted_actual_nett_home_amount, :wanted_commission_amount, :wanted_commission_home_amount, :wanted_gross_amount, :wanted_home_gross_amount, :wanted_intermediary_margin_amount, :wanted_intermediary_margin_home_amount, :wanted_intermediary_margin_percentage, :wanted_nett_amount, :wanted_nett_home_amount

  def to_s
    "SupplierFinancialDocumentLine #{id}"
end

end
