class CampaignSchedulePlacementAdvanceViewProfile < ActiveRecord::Base
attr_accessible :code, :custom_layout_name, :custom_layout_x_m_l, :uid

  def to_s
    "CampaignSchedulePlacementAdvanceViewProfile #{id}"
end

end
