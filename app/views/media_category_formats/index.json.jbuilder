json.array!(@media_category_formats) do |media_category_format|
  json.extract! media_category_format, :id, :uid, :code, :name, :media_category_id, :media_space_id, :is_active, :eis_sync_date
  json.url media_category_format_url(media_category_format, format: :json)
end
