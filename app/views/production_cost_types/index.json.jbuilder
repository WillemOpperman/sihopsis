json.array!(@production_cost_types) do |production_cost_type|
  json.extract! production_cost_type, :id, :uid, :code, :name, :currency_id, :supplier_id, :company_id, :company_division_id, :client_id, :client_product_id, :unit_cost_amount, :production_cost_margin_percentage, :is_active, :creation_source_id, :eis_sync_date
  json.url production_cost_type_url(production_cost_type, format: :json)
end
