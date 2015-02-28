json.array!(@supplier_financial_document_payment_receipts) do |supplier_financial_document_payment_receipt|
  json.extract! supplier_financial_document_payment_receipt, :id, :uid, :code, :name, :supplier_financial_document_id, :payment_receipt_id, :creation_source_id, :eis_sync_date
  json.url supplier_financial_document_payment_receipt_url(supplier_financial_document_payment_receipt, format: :json)
end
