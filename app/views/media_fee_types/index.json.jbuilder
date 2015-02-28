json.array!(@media_fee_types) do |media_fee_type|
  json.extract! media_fee_type, :id, :uid, :code, :name, :media_category_id, :supplier_id, :media_space_id, :media_space_part_id, :media_category_size_id, :media_category_format_id, :is_calculated_off_rate, :is_amount_based, :is_default, :is_only_allowed_once_per_placement, :default_fee_amount, :eis_sync_date
  json.url media_fee_type_url(media_fee_type, format: :json)
end
