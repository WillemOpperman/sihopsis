json.array!(@client_types) do |client_type|
  json.extract! client_type, :id, :uid, :code, :name, :is_financial, :is_client, :is_natural_client, :is_media_agency, :eis_sync_date
  json.url client_type_url(client_type, format: :json)
end
