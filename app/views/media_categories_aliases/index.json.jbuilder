json.array!(@media_categories_aliases) do |media_categories_alias|
  json.extract! media_categories_alias, :id, :uid, :code, :name, :media_category_id, :creation_source_id
  json.url media_categories_alias_url(media_categories_alias, format: :json)
end
