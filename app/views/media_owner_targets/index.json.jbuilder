json.array!(@media_owner_targets) do |media_owner_target|
  json.extract! media_owner_target, :id, :uid, :code, :media_owner_id, :media_target_id, :is_active, :eis_sync_date
  json.url media_owner_target_url(media_owner_target, format: :json)
end
