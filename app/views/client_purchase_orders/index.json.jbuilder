json.array!(@client_purchase_orders) do |client_purchase_order|
  json.extract! client_purchase_order, :id, :uid, :code, :code_external, :description, :client_id, :client_product_id, :status_id, :gross_amount, :commission_amount, :nett_amount, :order_date, :order_expiry_date, :owner_system_app_user_id, :related_id, :creation_source_id, :eis_sync_date, :currency_id, :exchange_rate, :gross_home_amount, :commission_home_amount, :nett_home_amount, :pre_billing_manual_client_financial_document_code
  json.url client_purchase_order_url(client_purchase_order, format: :json)
end
