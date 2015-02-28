json.array!(@production_supplier_financial_document_lines) do |production_supplier_financial_document_line|
  json.extract! production_supplier_financial_document_line, :id, :uid, :code, :production_supplier_financial_document_id, :production_supplier_purchase_order_line_id, :wanted_unit_cost_amount, :wanted_units_id, :production_wanted_cost_amount, :production_wanted_cost_home_amount, :unit_cost_amount, :units_id, :production_cost_amount, :production_cost_home_amount, :notes, :eis_sync_date
  json.url production_supplier_financial_document_line_url(production_supplier_financial_document_line, format: :json)
end
