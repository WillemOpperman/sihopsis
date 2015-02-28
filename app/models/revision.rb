class Revision < ActiveRecord::Base

  has_paper_trail

    belongs_to :company_division
    belongs_to :parent
    belongs_to :parent_entity_view
    belongs_to :creation_source
  
    attr_accessible :change_h_t_m_l_report, :change_x_m_l, :code, :eis_sync_date, :uid
  
  def to_s
    "Revision #{id}"
  end

end
