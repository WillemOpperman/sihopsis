class RateCardLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :rate_card
    belongs_to :rate_type
    belongs_to :cost_type
    belongs_to :agency_commission_type
    belongs_to :media_space_part
    belongs_to :media_space_section
    belongs_to :media_category_size
    belongs_to :media_category_format
  
    attr_accessible :actual_unit_cost_gross, :actual_unit_cost_nett, :agency_commission_percentage, :code, :description, :desired_minimum_rate, :overriding_supplier_commission_percentage, :uid
  
  def to_s
    "RateCardLine #{id}"
  end

end
