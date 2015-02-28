json.array!(@journals_document_system_app_integration_export_batches) do |journals_document_system_app_integration_export_batch|
  json.extract! journals_document_system_app_integration_export_batch, :id, :uid, :code, :journals_document_id, :is_success, :result_message
  json.url journals_document_system_app_integration_export_batch_url(journals_document_system_app_integration_export_batch, format: :json)
end
