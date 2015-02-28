json.array!(@cost_types) do |cost_type|
  json.extract! cost_type, :id, :uid, :code, :name, :is_gross, :is_nett, :eis_sync_date
  json.url cost_type_url(cost_type, format: :json)
end
