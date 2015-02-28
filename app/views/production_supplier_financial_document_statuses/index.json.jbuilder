json.array!(@production_supplier_financial_document_statuses) do |production_supplier_financial_document_status|
  json.extract! production_supplier_financial_document_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_finalised, :is_approved, :is_default, :eis_sync_date
  json.url production_supplier_financial_document_status_url(production_supplier_financial_document_status, format: :json)
end
