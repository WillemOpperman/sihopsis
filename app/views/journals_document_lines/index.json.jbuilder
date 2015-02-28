json.array!(@journals_document_lines) do |journals_document_line|
  json.extract! journals_document_line, :id, :uid, :code, :name, :journals_document_id, :debit_account_no, :credit_account_no, :amount, :comments, :creation_source_id, :eis_sync_date
  json.url journals_document_line_url(journals_document_line, format: :json)
end
