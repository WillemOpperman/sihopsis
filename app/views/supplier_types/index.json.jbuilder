json.array!(@supplier_types) do |supplier_type|
  json.extract! supplier_type, :id, :uid, :code, :name, :is_media, :is_media_production, :eis_sync_date
  json.url supplier_type_url(supplier_type, format: :json)
end
