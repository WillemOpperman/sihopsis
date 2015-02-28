json.array!(@campaign_schedule_placement_client_materials) do |campaign_schedule_placement_client_material|
  json.extract! campaign_schedule_placement_client_material, :id, :uid, :code, :campaign_schedule_placement_id, :client_material_id, :is_primary, :creation_source_id, :eis_sync_date
  json.url campaign_schedule_placement_client_material_url(campaign_schedule_placement_client_material, format: :json)
end
