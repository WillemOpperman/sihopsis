json.array!(@client_financial_document_statuses) do |client_financial_document_status|
  json.extract! client_financial_document_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :is_exported, :eis_sync_date
  json.url client_financial_document_status_url(client_financial_document_status, format: :json)
end
