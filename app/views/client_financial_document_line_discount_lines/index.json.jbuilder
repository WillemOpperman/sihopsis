json.array!(@client_financial_document_line_discount_lines) do |client_financial_document_line_discount_line|
  json.extract! client_financial_document_line_discount_line, :id, :uid, :code, :client_financial_document_line_id, :discount_amount, :discount_home_amount, :discount_to_client_amount, :discount_to_client_home_amount, :eis_sync_date
  json.url client_financial_document_line_discount_line_url(client_financial_document_line_discount_line, format: :json)
end
