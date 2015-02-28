json.array!(@routing_address_types) do |routing_address_type|
  json.extract! routing_address_type, :id, :uid, :code, :name, :company_id, :default_routing_address_source_type_id, :eis_sync_date
  json.url routing_address_type_url(routing_address_type, format: :json)
end
