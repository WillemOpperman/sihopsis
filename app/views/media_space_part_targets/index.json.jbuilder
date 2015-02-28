json.array!(@media_space_part_targets) do |media_space_part_target|
  json.extract! media_space_part_target, :id, :uid, :code, :media_space_part_id, :media_target_id, :is_active, :eis_sync_date
  json.url media_space_part_target_url(media_space_part_target, format: :json)
end
