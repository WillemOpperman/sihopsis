json.array!(@media_advert_sources) do |media_advert_source|
  json.extract! media_advert_source, :id, :uid, :code, :name, :company_id, :creation_source_id, :eis_sync_date
  json.url media_advert_source_url(media_advert_source, format: :json)
end
