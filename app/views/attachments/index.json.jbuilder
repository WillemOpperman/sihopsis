json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :uid, :code, :type_id, :is_stored_in_document_share, :file_path, :description, :item_system_app_entity_view_id, :related_item_id, :is_auto_attached_when_parent_is_emailed
  json.url attachment_url(attachment, format: :json)
end
