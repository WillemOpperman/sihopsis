class ClientContract < ActiveRecord::Base

  has_paper_trail

    belongs_to :company
    belongs_to :company_division
    belongs_to :client
    belongs_to :client_product
    belongs_to :campaign
    belongs_to :campaign_schedule
    belongs_to :client_contact
    belongs_to :owner_user
    belongs_to :currency
    belongs_to :creation_source
    belongs_to :status
    belongs_to :communication_status
    belongs_to :tax_type
  
    attr_accessible :actual_date, :code, :code_external, :commission_amount, :eis_sync_date, :exchange_rate, :grid_layout_x_m_l, :gross_amount, :nett_amount, :notes, :revision_no, :status_reason, :tax_gross_amount, :tax_nett_amount, :uid
  
  def to_s
    "ClientContract #{id}"
  end

end
