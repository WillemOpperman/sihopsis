json.array!(@media_owners) do |media_owner|
  json.extract! media_owner, :id, :code, :code_external, :uid, :name, :offical_name, :default_contact_id, :creation_source_id, :phone_number, :fax_number, :e_mail, :postal_address, :physical_address, :default_commission_percentage, :default_material_deadline_days_id, :default_cancellation_days_id, :is_active, :eis_sync_date, :company_division_id
  json.url media_owner_url(media_owner, format: :json)
end
