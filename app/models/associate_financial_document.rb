class AssociateFinancialDocument < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :company_division
    belongs_to :associate
    belongs_to :contact
    belongs_to :campaign
    belongs_to :campaign_schedule
    belongs_to :owner_user
    belongs_to :currency
    belongs_to :creation_source
    belongs_to :status
    belongs_to :communication_status
    belongs_to :company_cost_centre
    belongs_to :tax_type
  
    attr_accessible :actual_date, :amount, :amount_home, :amount_inc_tax_amount, :amount_inc_tax_home_amount, :code, :code_external, :eis_sync_date, :exchange_rate, :grid_layout_x_m_l, :notes, :posting_date, :status_reason, :tax_amount, :uid
  
  def to_s
    "AssociateFinancialDocument #{id}"
  end

end
