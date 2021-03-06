json.array!(@production_supplier_purchase_order_lines) do |production_supplier_purchase_order_line|
  json.extract! production_supplier_purchase_order_line, :id, :uid, :code, :production_supplier_purchase_order_id, :campaign_schedule_placement_production_cost_id, :percentage_ordered, :unit_cost_amount, :units_id, :production_cost_amount, :production_cost_home_amount, :notes, :eis_sync_date
  json.url production_supplier_purchase_order_line_url(production_supplier_purchase_order_line, format: :json)
end
