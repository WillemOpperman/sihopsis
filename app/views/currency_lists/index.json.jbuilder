json.array!(@currency_lists) do |currency_list|
  json.extract! currency_list, :id, :uid, :code, :name, :company_id, :company_division_id, :start_date, :expiry_date, :is_active, :eis_sync_date
  json.url currency_list_url(currency_list, format: :json)
end
