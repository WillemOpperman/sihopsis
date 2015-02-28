json.array!(@routing_addresses) do |routing_address|
  json.extract! routing_address, :id, :uid, :code, :name, :company_id, :eis_sync_date, :is_active
  json.url routing_address_url(routing_address, format: :json)
end
