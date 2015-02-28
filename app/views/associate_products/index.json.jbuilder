json.array!(@associate_products) do |associate_product|
  json.extract! associate_product, :id, :code, :code_external, :uid, :name, :associate_id, :default_contact_id, :default_agency_commission_percentage, :tax_registration_no, :region, :is_active, :eis_sync_date
  json.url associate_product_url(associate_product, format: :json)
end
