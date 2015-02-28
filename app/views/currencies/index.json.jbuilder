json.array!(@currencies) do |currency|
  json.extract! currency, :id, :code, :uid, :default_tax_type_id, :name, :symbol
  json.url currency_url(currency, format: :json)
end
