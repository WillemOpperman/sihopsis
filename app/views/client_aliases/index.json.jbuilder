json.array!(@client_aliases) do |client_alias|
  json.extract! client_alias, :id, :uid, :code, :client_id, :name
  json.url client_alias_url(client_alias, format: :json)
end
