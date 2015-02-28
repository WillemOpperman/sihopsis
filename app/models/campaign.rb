class Campaign < ActiveRecord::Base

  has_paper_trail

    belongs_to :company_division
    belongs_to :status
    belongs_to :client
    belongs_to :default_client_product
    belongs_to :default_client_product_sub
    belongs_to :default_creative_agency
    belongs_to :default_media_agency_client
    belongs_to :default_natural_client
    belongs_to :default_natural_client_product
    belongs_to :owner_user
    belongs_to :manager_user
    belongs_to :default_client_contact
    belongs_to :default_creative_agency_contact
    belongs_to :default_media_agency_client_contact
    belongs_to :default_natural_client_contact
    belongs_to :client_purchase_order
    belongs_to :creation_source
  
    attr_accessible :additional_name, :code, :code_external, :eis_sync_date, :finish_date, :name, :start_date, :uid
  
  def to_s
    name
  end

end
