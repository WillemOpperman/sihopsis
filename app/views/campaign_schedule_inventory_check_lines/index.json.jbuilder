json.array!(@campaign_schedule_inventory_check_lines) do |campaign_schedule_inventory_check_line|
  json.extract! campaign_schedule_inventory_check_line, :id, :uid, :code, :revision_no, :campaign_schedule_inventory_check_id, :campaign_schedule_placement_id, :gross_amount, :commission_amount, :nett_amount, :commission_percent, :eis_sync_date
  json.url campaign_schedule_inventory_check_line_url(campaign_schedule_inventory_check_line, format: :json)
end
