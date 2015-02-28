json.array!(@client_billing_settings) do |client_billing_setting|
  json.extract! client_billing_setting, :id, :code, :uid, :company_division_id, :client_id, :client_product_id, :start_date, :expiry_date, :is_active, :media_category_id, :supplier_id, :media_space_id
  json.url client_billing_setting_url(client_billing_setting, format: :json)
end
