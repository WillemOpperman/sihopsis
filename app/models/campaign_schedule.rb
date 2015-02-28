class CampaignSchedule < ActiveRecord::Base
  belongs_to :company_division
  belongs_to :campaign
  belongs_to :default_client_product
  belongs_to :default_client_product_sub
  belongs_to :owner_system_app_user
  belongs_to :manager_system_app_user
  belongs_to :default_client_contact
  belongs_to :default_creative_agency
  belongs_to :default_creative_agency_contact
  belongs_to :default_media_agency_client
  belongs_to :default_media_agency_client_contact
  belongs_to :default_natural_client
  belongs_to :default_natural_client_product
  belongs_to :default_natural_client_contact
  belongs_to :client_purchase_order
  belongs_to :media_category
  belongs_to :media_region
  belongs_to :creation_source
attr_accessible :code, :code_external, :comments, :eis_sync_date, :finish_date, :gross_budget, :name, :start_date, :uid

  def to_s
    name
end

end
