json.array!(@media_space_part_types) do |media_space_part_type|
  json.extract! media_space_part_type, :id, :uid, :code, :name, :media_category_id, :media_space_id, :is_active, :eis_sync_date
  json.url media_space_part_type_url(media_space_part_type, format: :json)
end
