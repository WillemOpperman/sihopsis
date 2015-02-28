json.array!(@attachment_types) do |attachment_type|
  json.extract! attachment_type, :id, :uid, :code, :name, :is_default, :is_user_attached, :is_system_generated, :is_template, :is_auto_attached_when_parent_is_emailed
  json.url attachment_type_url(attachment_type, format: :json)
end
