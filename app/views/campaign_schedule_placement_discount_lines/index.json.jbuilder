json.array!(@campaign_schedule_placement_discount_lines) do |campaign_schedule_placement_discount_line|
  json.extract! campaign_schedule_placement_discount_line, :id, :uid, :code, :campaign_schedule_placement_id, :media_discount_surcharge_type_id, :media_discount_surcharge_type_client_deal_id, :discount_percent, :discount_amount, :discount_to_client_percent, :discount_to_client_amount, :is_default, :eis_sync_date, :apply_after_id
  json.url campaign_schedule_placement_discount_line_url(campaign_schedule_placement_discount_line, format: :json)
end
