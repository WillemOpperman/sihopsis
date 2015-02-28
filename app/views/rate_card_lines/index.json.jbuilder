json.array!(@rate_card_lines) do |rate_card_line|
  json.extract! rate_card_line, :id, :uid, :code, :rate_card_id, :rate_type_id, :desired_minimum_rate, :cost_type_id, :actual_unit_cost_gross, :overriding_supplier_commission_percentage, :actual_unit_cost_nett, :agency_commission_type_id, :agency_commission_percentage, :media_space_part_id, :media_space_section_id, :media_category_size_id, :media_category_format_id, :description
  json.url rate_card_line_url(rate_card_line, format: :json)
end
