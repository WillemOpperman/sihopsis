json.array!(@campaign_schedule_placement_media_targets) do |campaign_schedule_placement_media_target|
  json.extract! campaign_schedule_placement_media_target, :id, :uid, :code, :campaign_schedule_placement_id, :media_target_id, :is_active, :creation_source_id, :eis_sync_date
  json.url campaign_schedule_placement_media_target_url(campaign_schedule_placement_media_target, format: :json)
end
