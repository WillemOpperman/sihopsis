json.array!(@campaign_schedule_brief_lines) do |campaign_schedule_brief_line|
  json.extract! campaign_schedule_brief_line, :id, :uid, :code, :revision_no, :campaign_schedule_brief_id, :campaign_schedule_placement_id, :eis_sync_date
  json.url campaign_schedule_brief_line_url(campaign_schedule_brief_line, format: :json)
end
