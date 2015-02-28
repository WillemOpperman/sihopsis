json.array!(@media_space_aliases) do |media_space_alias|
  json.extract! media_space_alias, :id, :uid, :code, :name, :media_space_id, :media_region_id, :creation_source_id
  json.url media_space_alias_url(media_space_alias, format: :json)
end
