json.array!(@client_financial_document_payment_receipts) do |client_financial_document_payment_receipt|
  json.extract! client_financial_document_payment_receipt, :id, :uid, :code, :name, :client_financial_document_id, :payment_receipt_id, :creation_source_id, :eis_sync_date
  json.url client_financial_document_payment_receipt_url(client_financial_document_payment_receipt, format: :json)
end
