json.array!(@contacts) do |contact|
  json.extract! contact, :id, :code, :uid, :name, :is_active, :birthdate, :designation, :phone_number, :phone_number2, :mobile_number, :fax_number, :e_mail, :postal_address, :physical_address, :eis_sync_date
  json.url contact_url(contact, format: :json)
end
