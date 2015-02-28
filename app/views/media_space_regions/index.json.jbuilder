json.array!(@media_space_regions) do |media_space_region|
  json.extract! media_space_region, :id, :uid, :code, :media_space_id, :media_region_id, :eis_sync_date
  json.url media_space_region_url(media_space_region, format: :json)
end
