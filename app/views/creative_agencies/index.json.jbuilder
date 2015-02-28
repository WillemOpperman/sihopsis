json.array!(@creative_agencies) do |creative_agency|
  json.extract! creative_agency, :id, :uid, :code, :company_id, :name, :legal_name, :is_active, :postal_address, :physical_address, :phone_number, :fax_number, :e_mail, :notes, :default_contact_id
  json.url creative_agency_url(creative_agency, format: :json)
end
