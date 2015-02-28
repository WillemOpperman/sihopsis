json.array!(@campaign_schedule_placement_status_change_rules) do |campaign_schedule_placement_status_change_rule|
  json.extract! campaign_schedule_placement_status_change_rule, :id, :uid, :code, :name, :change_from_campaign_schedule_placement_status_id, :change_to_campaign_schedule_placement_status_id, :is_allowed, :is_allowed_in_change_wizard, :eis_sync_date
  json.url campaign_schedule_placement_status_change_rule_url(campaign_schedule_placement_status_change_rule, format: :json)
end
