json.array!(@media_target_types) do |media_target_type|
  json.extract! media_target_type, :id, :uid, :code, :name, :media_category_id, :is_active, :eis_sync_date
  json.url media_target_type_url(media_target_type, format: :json)
end
