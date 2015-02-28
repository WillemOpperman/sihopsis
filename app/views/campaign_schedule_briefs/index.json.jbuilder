json.array!(@campaign_schedule_briefs) do |campaign_schedule_brief|
  json.extract! campaign_schedule_brief, :id, :uid, :code, :company_division_id, :campaign_schedule_id, :contact_id, :communication_status_id, :creation_source_id, :description, :eis_sync_date
  json.url campaign_schedule_brief_url(campaign_schedule_brief, format: :json)
end
