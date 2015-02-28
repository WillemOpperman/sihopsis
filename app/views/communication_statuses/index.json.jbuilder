json.array!(@communication_statuses) do |communication_status|
  json.extract! communication_status, :id, :uid, :code, :name, :is_emailed, :is_printed, :is_default, :eis_sync_date
  json.url communication_status_url(communication_status, format: :json)
end
