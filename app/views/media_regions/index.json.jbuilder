json.array!(@media_regions) do |media_region|
  json.extract! media_region, :id, :uid, :code, :code_external, :name, :eis_sync_date
  json.url media_region_url(media_region, format: :json)
end
