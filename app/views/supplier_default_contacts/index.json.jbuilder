json.array!(@supplier_default_contacts) do |supplier_default_contact|
  json.extract! supplier_default_contact, :id, :uid, :code, :name, :supplier_id, :contact_id, :is_active, :creation_source_id, :eis_sync_date
  json.url supplier_default_contact_url(supplier_default_contact, format: :json)
end
