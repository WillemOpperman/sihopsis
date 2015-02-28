class AssociateFinancialDocumentLine < ActiveRecord::Base
  belongs_to :associate_financial_document
  belongs_to :client_financial_document_line
  belongs_to :campaign_schedule_placement
  belongs_to :client_commission_deal_associate_member
  belongs_to :client_billing_setting_line
  belongs_to :media_category
attr_accessible :amount, :amount_home, :amount_inc_tax_amount, :amount_inc_tax_home_amount, :code, :eis_sync_date, :tax_amount, :uid

  def to_s
    "AssociateFinancialDocumentLine #{id}"
end

end
