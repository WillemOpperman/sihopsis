class CampaignSchedulePlacementServiceProviderDigitalProof < ActiveRecord::Base
  belongs_to :campaign_schedule_placement
  belongs_to :service_prover_digital_proof
  belongs_to :status_system_app_user
attr_accessible :code, :eis_sync_date, :is_accepted_by_media_agency, :media_agency_status, :service_provider_advert_language, :service_provider_advert_no, :service_provider_advert_title, :service_provider_colour, :service_provider_columns, :service_provider_modified_date, :service_provider_position, :service_provider_position_no, :service_provider_size, :status_date, :uid

  def to_s
    "CampaignSchedulePlacementServiceProviderDigitalProof #{id}"
end

end
