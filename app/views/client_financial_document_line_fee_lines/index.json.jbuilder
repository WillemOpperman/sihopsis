json.array!(@client_financial_document_line_fee_lines) do |client_financial_document_line_fee_line|
  json.extract! client_financial_document_line_fee_line, :id, :uid, :code, :client_financial_document_line_id, :campaign_schedule_placement_fee_line_id, :fee_amount, :fee_home_amount, :eis_sync_date
  json.url client_financial_document_line_fee_line_url(client_financial_document_line_fee_line, format: :json)
end
