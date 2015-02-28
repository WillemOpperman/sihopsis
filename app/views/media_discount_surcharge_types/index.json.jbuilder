json.array!(@media_discount_surcharge_types) do |media_discount_surcharge_type|
  json.extract! media_discount_surcharge_type, :id, :uid, :code, :name, :media_category_id, :supplier_id, :media_space_id, :media_space_part_id, :media_category_size_id, :media_category_format_id, :is_calculated_off_rate, :is_amount_based, :is_full_discount, :eis_sync_date, :is_default, :is_active
  json.url media_discount_surcharge_type_url(media_discount_surcharge_type, format: :json)
end
