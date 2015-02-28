json.array!(@associate_financial_document_payment_receipts) do |associate_financial_document_payment_receipt|
  json.extract! associate_financial_document_payment_receipt, :id, :uid, :code, :name, :associate_financial_document_id, :payment_receipt_id, :creation_source_id, :eis_sync_date
  json.url associate_financial_document_payment_receipt_url(associate_financial_document_payment_receipt, format: :json)
end
