class ServiceProviderDigitalProof < ActiveRecord::Base

  has_paper_trail

    belongs_to :service_prover
  
    attr_accessible :appearance_date, :code, :eis_sync_date, :local_server_file_name, :service_provider_modified_date, :source_location, :source_location2, :source_name, :uid, :url
  
  def to_s
    "ServiceProviderDigitalProof #{id}"
  end

end
