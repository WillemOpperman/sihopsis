json.array!(@payment_receipts) do |payment_receipt|
  json.extract! payment_receipt, :id, :uid, :code, :name, :payment_amount, :creation_source_id, :eis_sync_date
  json.url payment_receipt_url(payment_receipt, format: :json)
end
