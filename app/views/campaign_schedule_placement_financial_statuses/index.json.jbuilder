json.array!(@campaign_schedule_placement_financial_statuses) do |campaign_schedule_placement_financial_status|
  json.extract! campaign_schedule_placement_financial_status, :id, :uid, :code, :name, :is_placement_active, :is_placement_billed, :is_placement_amended, :is_placement_transitioning, :is_reason_required_to_change_to, :eis_sync_date
  json.url campaign_schedule_placement_financial_status_url(campaign_schedule_placement_financial_status, format: :json)
end
