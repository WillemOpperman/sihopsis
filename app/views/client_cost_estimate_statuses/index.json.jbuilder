json.array!(@client_cost_estimate_statuses) do |client_cost_estimate_status|
  json.extract! client_cost_estimate_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date, :is_status_active
  json.url client_cost_estimate_status_url(client_cost_estimate_status, format: :json)
end
