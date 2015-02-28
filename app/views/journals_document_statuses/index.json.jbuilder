json.array!(@journals_document_statuses) do |journals_document_status|
  json.extract! journals_document_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :creation_source_id, :eis_sync_date, :is_exported
  json.url journals_document_status_url(journals_document_status, format: :json)
end
