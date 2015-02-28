json.array!(@campaign_schedule_placement_routing_addresses) do |campaign_schedule_placement_routing_address|
  json.extract! campaign_schedule_placement_routing_address, :id, :uid, :code, :name, :campaign_schedule_placement_id, :routing_address_source_type_id, :routing_address_type_id, :routing_address_id, :notes, :eis_sync_date
  json.url campaign_schedule_placement_routing_address_url(campaign_schedule_placement_routing_address, format: :json)
end
