json.array!(@media_target_aliases) do |media_target_alias|
  json.extract! media_target_alias, :id, :uid, :code, :name, :media_target_id, :creation_source_id
  json.url media_target_alias_url(media_target_alias, format: :json)
end
