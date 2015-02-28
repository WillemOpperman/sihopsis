class ClientBillingType < ActiveRecord::Base
  belongs_to :company_division
  belongs_to :sort_order
  belongs_to :company
attr_accessible :code, :is_default, :is_split_by_campaign, :is_split_by_campaign_schedule, :is_split_by_campaign_schedule_placement, :is_split_by_client, :is_split_by_client_material, :is_split_by_media_space, :is_split_by_month, :is_split_by_order_no, :is_split_by_week, :is_split_by_year, :name, :uid

  def to_s
    name
end

end
