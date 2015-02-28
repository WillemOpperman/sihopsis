json.array!(@company_cost_centres) do |company_cost_centre|
  json.extract! company_cost_centre, :id, :uid, :code, :name, :company_id, :is_active, :creation_source_id, :eis_sync_date
  json.url company_cost_centre_url(company_cost_centre, format: :json)
end
