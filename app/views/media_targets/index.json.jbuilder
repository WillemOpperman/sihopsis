json.array!(@media_targets) do |media_target|
  json.extract! media_target, :id, :uid, :code, :name, :type_id, :rate_increase_percentage, :rate_increase_amount, :range_from_amount, :range_to_amount, :is_name_auto_maintained, :is_active, :eis_sync_date
  json.url media_target_url(media_target, format: :json)
end
