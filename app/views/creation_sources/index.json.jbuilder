json.array!(@creation_sources) do |creation_source|
  json.extract! creation_source, :id, :uid, :code, :name, :is_user, :is_user_import, :is_system_import
  json.url creation_source_url(creation_source, format: :json)
end
