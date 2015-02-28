json.array!(@media_owner_frequency_cap_types) do |media_owner_frequency_cap_type|
  json.extract! media_owner_frequency_cap_type, :id, :uid, :code, :media_owner_id, :media_frequency_cap_type_id, :is_active, :eis_sync_date
  json.url media_owner_frequency_cap_type_url(media_owner_frequency_cap_type, format: :json)
end
