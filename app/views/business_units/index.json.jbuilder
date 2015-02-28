json.array!(@business_units) do |business_unit|
  json.extract! business_unit, :id, :uid, :code, :name, :is_active, :creation_source_id, :eis_sync_date
  json.url business_unit_url(business_unit, format: :json)
end
