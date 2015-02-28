json.array!(@client_financial_document_system_app_integration_export_batches) do |client_financial_document_system_app_integration_export_batch|
  json.extract! client_financial_document_system_app_integration_export_batch, :id, :uid, :code, :client_financial_document_id, :is_success, :result_message
  json.url client_financial_document_system_app_integration_export_batch_url(client_financial_document_system_app_integration_export_batch, format: :json)
end
