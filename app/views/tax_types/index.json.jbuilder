json.array!(@tax_types) do |tax_type|
  json.extract! tax_type, :id, :uid, :code, :name, :creation_source_id, :tax_rate, :is_locked, :is_active, :eis_sync_date
  json.url tax_type_url(tax_type, format: :json)
end
