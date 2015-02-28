json.array!(@campaign_statuses) do |campaign_status|
  json.extract! campaign_status, :id, :uid, :code, :name, :is_open, :is_closed, :is_cancelled, :is_default, :eis_sync_date
  json.url campaign_status_url(campaign_status, format: :json)
end
