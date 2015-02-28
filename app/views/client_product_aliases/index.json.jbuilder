json.array!(@client_product_aliases) do |client_product_alias|
  json.extract! client_product_alias, :id, :uid, :code, :client_product_id, :client_id, :name
  json.url client_product_alias_url(client_product_alias, format: :json)
end
