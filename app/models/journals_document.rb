class JournalsDocument < ActiveRecord::Base

  has_paper_trail

    belongs_to :status
    belongs_to :company_cost_centre
    belongs_to :company_accounting_period
    belongs_to :creation_source
    belongs_to :campaign
    belongs_to :media_category
  
    attr_accessible :actual_date, :code, :eis_sync_date, :internal_comments, :name, :posting_date, :uid
  
  def to_s
    name
  end

end
