class AgencyCommissionType < ActiveRecord::Base

  has_paper_trail

  belongs_to :media_category

  attr_accessible :code,\n:eis_sync_date,\n:is_calculated_as_gross_marked_up_by_agency_comm_perc,\n:is_calculated_as_nett_marked_up_by_agency_comm_perc,\n:is_default,\n:name,\n:uid

  def to_s
    code
  end

end
