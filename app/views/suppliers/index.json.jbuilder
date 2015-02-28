json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :code, :code_external, :uid, :name, :offical_name, :company_id, :company_division_id, :company_registration_no, :default_contact_id, :creation_source_id, :type_id, :phone_number, :fax_number, :e_mail, :postal_address, :physical_address, :payment_terms, :tax_registration_no, :default_tax_type_id, :financial_year_end, :commission_percentage_default, :default_currency_id, :is_active, :eis_sync_date
  json.url supplier_url(supplier, format: :json)
end
