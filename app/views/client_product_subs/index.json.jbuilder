json.array!(@client_product_subs) do |client_product_sub|
  json.extract! client_product_sub, :id, :code, :code_external, :uid, :name, :client_product_id, :default_contact_id, :creation_source_id, :default_agency_commission_percentage, :tax_registration_no, :region, :is_active, :eis_sync_date
  json.url client_product_sub_url(client_product_sub, format: :json)
end
