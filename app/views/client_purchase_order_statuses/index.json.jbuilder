json.array!(@client_purchase_order_statuses) do |client_purchase_order_status|
  json.extract! client_purchase_order_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date
  json.url client_purchase_order_status_url(client_purchase_order_status, format: :json)
end
