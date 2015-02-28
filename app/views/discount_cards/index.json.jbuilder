json.array!(@discount_cards) do |discount_card|
  json.extract! discount_card, :id, :uid, :discount_standard, :discount_negotiated, :discount_early_booking, :discount_other1, :discount_other2, :specific_company_division_id, :supplier_group_id, :supplier_id, :supplier_product_id, :client_group_id, :client_id, :client_product_id, :media_space_id, :media_space_part_id, :media_space_section_id, :media_category_size_id, :media_category_format_id, :is_active, :start_date, :expiry_date, :description, :supplier_contact_id, :is_calculated, :is_gross
  json.url discount_card_url(discount_card, format: :json)
end
