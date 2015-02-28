json.array!(@client_contract_statuses) do |client_contract_status|
  json.extract! client_contract_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date, :is_status_active
  json.url client_contract_status_url(client_contract_status, format: :json)
end
