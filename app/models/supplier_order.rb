class SupplierOrder < ActiveRecord::Base

  has_paper_trail

    belongs_to :company_division
    belongs_to :campaign_schedule
    belongs_to :supplier
    belongs_to :media_space
    belongs_to :contact
    belongs_to :communication_status
    belongs_to :creation_source
    belongs_to :tax_type
    belongs_to :currency
    belongs_to :status
  
    attr_accessible :code, :code_external, :eis_sync_date, :exchange_rate, :order_commission_amount, :order_commission_amount_home, :order_gross_amount, :order_gross_amount_home, :order_nett_amount, :order_nett_amount_home, :order_nett_inc_tax_amount, :revision_no, :tax_gross_amount, :tax_gross_amount_home, :tax_nett_amount, :tax_nett_amount_home, :uid
  
  def to_s
    "SupplierOrder #{id}"
  end

end
