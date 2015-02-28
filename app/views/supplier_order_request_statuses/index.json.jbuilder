json.array!(@supplier_order_request_statuses) do |supplier_order_request_status|
  json.extract! supplier_order_request_status, :id, :uid, :code, :name, :is_status_active, :is_issued, :is_cancelled, :is_default, :is_active, :creation_source_id, :eis_sync_date
  json.url supplier_order_request_status_url(supplier_order_request_status, format: :json)
end
