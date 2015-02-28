json.array!(@production_supplier_purchase_order_statuses) do |production_supplier_purchase_order_status|
  json.extract! production_supplier_purchase_order_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date
  json.url production_supplier_purchase_order_status_url(production_supplier_purchase_order_status, format: :json)
end
