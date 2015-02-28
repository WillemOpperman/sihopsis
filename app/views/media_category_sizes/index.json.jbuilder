json.array!(@media_category_sizes) do |media_category_size|
  json.extract! media_category_size, :id, :uid, :code, :name, :media_category_id, :media_space_id, :height_id, :columns_id, :height_unit_of_measure, :columns_unit_of_measure, :is_name_auto_maintained, :is_active, :eis_sync_date
  json.url media_category_size_url(media_category_size, format: :json)
end
