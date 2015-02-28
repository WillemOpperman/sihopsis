json.array!(@eis_service_providers) do |eis_service_provider|
  json.extract! eis_service_provider, :id, :uid, :code, :code_external, :name, :is_this_agency, :service_provider_modified_date, :eis_sync_date
  json.url eis_service_provider_url(eis_service_provider, format: :json)
end
