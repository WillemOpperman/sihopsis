json.array!(@media_frequency_cap_types) do |media_frequency_cap_type|
  json.extract! media_frequency_cap_type, :id, :uid, :code, :name, :media_category_id, :is_active, :eis_sync_date
  json.url media_frequency_cap_type_url(media_frequency_cap_type, format: :json)
end
