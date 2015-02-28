json.array!(@supplier_financial_document_statuses) do |supplier_financial_document_status|
  json.extract! supplier_financial_document_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_finalised, :is_on_hold, :is_approved, :is_default, :is_exported, :eis_sync_date
  json.url supplier_financial_document_status_url(supplier_financial_document_status, format: :json)
end
