json.array!(@associate_financial_document_statuses) do |associate_financial_document_status|
  json.extract! associate_financial_document_status, :id, :uid, :code, :name, :is_status_active, :is_cancelled, :is_approved, :is_default, :is_exported, :is_active, :eis_sync_date
  json.url associate_financial_document_status_url(associate_financial_document_status, format: :json)
end
