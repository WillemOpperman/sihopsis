json.array!(@campaign_schedule_placement_fee_lines) do |campaign_schedule_placement_fee_line|
  json.extract! campaign_schedule_placement_fee_line, :id, :uid, :code, :campaign_schedule_placement_id, :media_fee_type_id, :fee_percent, :fee_amount, :fee_home_amount, :eis_sync_date
  json.url campaign_schedule_placement_fee_line_url(campaign_schedule_placement_fee_line, format: :json)
end
