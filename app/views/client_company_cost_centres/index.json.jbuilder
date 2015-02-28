json.array!(@client_company_cost_centres) do |client_company_cost_centre|
  json.extract! client_company_cost_centre, :id, :uid, :code, :name, :client_id, :company_cost_centre_id, :is_active, :creation_source_id, :eis_sync_date, :additional_company_cost_centre_id
  json.url client_company_cost_centre_url(client_company_cost_centre, format: :json)
end
