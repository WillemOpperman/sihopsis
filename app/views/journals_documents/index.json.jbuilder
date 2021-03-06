json.array!(@journals_documents) do |journals_document|
  json.extract! journals_document, :id, :uid, :code, :name, :status_id, :company_cost_centre_id, :company_accounting_period_id, :internal_comments, :creation_source_id, :eis_sync_date, :posting_date, :actual_date, :campaign_id, :media_category_id
  json.url journals_document_url(journals_document, format: :json)
end
