json.array!(@rate_types) do |rate_type|
  json.extract! rate_type, :id, :uid, :code, :name, :media_category_id, :is_default, :is_calculated_as_rate_x_size_x_columns, :is_calculated_as_rate_x_size_x_columns_over_quantity_per_unit_rate_x_quantity, :is_calculated_as_rate_over_quantity_per_unit_rate_x_quantity, :is_added_value, :default_quantity_per_unit_rate, :eis_sync_date, :is_active
  json.url rate_type_url(rate_type, format: :json)
end
