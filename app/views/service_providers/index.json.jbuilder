json.array!(@service_providers) do |service_provider|
  json.extract! service_provider, :id, :code, :uid, :name, :is_this_agency, :default_proof_file_extention, :is_active, :modified_date, :eis_sync_date
  json.url service_provider_url(service_provider, format: :json)
end
