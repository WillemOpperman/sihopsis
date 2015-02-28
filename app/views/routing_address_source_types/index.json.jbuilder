json.array!(@routing_address_source_types) do |routing_address_source_type|
  json.extract! routing_address_source_type, :id, :uid, :code, :name, :company_id, :is_branded, :eis_sync_date
  json.url routing_address_source_type_url(routing_address_source_type, format: :json)
end
