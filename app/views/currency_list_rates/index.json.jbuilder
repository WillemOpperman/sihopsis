json.array!(@currency_list_rates) do |currency_list_rate|
  json.extract! currency_list_rate, :id, :uid, :code, :name, :currency_list_id, :currency_id, :buying_rate, :selling_rate, :eis_sync_date
  json.url currency_list_rate_url(currency_list_rate, format: :json)
end
