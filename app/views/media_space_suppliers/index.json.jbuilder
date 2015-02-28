json.array!(@media_space_suppliers) do |media_space_supplier|
  json.extract! media_space_supplier, :id, :uid, :code, :media_space_id, :supplier_id, :cost_type_id, :commission_percentage, :minimum_intermediary_margin_percentage, :eis_sync_date, :is_active
  json.url media_space_supplier_url(media_space_supplier, format: :json)
end
