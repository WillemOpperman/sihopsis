json.array!(@rate_cards) do |rate_card|
  json.extract! rate_card, :id, :uid, :code, :specific_company_division_id, :supplier_group_id, :supplier_id, :media_space_id, :client_group_id, :client_id, :client_product_id, :is_active, :start_date, :expiry_date, :supplier_contact_id
  json.url rate_card_url(rate_card, format: :json)
end
