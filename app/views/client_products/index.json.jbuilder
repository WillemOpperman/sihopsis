json.array!(@client_products) do |client_product|
  json.extract! client_product, :id, :code, :code_external, :uid, :name, :client_id, :default_contact_id, :creation_source_id, :default_agency_commission_percentage, :tax_registration_no, :region, :is_active, :eis_sync_date
  json.url client_product_url(client_product, format: :json)
end
