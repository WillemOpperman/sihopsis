json.array!(@media_space_supplier_aliases) do |media_space_supplier_alias|
  json.extract! media_space_supplier_alias, :id, :uid, :code, :name, :media_space_id, :supplier_id
  json.url media_space_supplier_alias_url(media_space_supplier_alias, format: :json)
end
