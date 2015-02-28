json.array!(@media_space_targets) do |media_space_target|
  json.extract! media_space_target, :id, :uid, :code, :media_space_id, :media_target_id, :is_active, :eis_sync_date
  json.url media_space_target_url(media_space_target, format: :json)
end
