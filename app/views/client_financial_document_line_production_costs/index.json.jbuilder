json.array!(@client_financial_document_line_production_costs) do |client_financial_document_line_production_cost|
  json.extract! client_financial_document_line_production_cost, :id, :uid, :code, :client_financial_document_line_id, :campaign_schedule_placement_production_cost_id, :production_cost_amount, :production_cost_home_amount, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_cost_with_margin_amount, :production_cost_with_margin_home_amount, :eis_sync_date
  json.url client_financial_document_line_production_cost_url(client_financial_document_line_production_cost, format: :json)
end
