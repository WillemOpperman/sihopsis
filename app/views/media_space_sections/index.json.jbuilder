json.array!(@media_space_sections) do |media_space_section|
  json.extract! media_space_section, :id, :uid, :code, :name, :media_space_id, :default_material_deadline_days_id, :default_cancellation_days_id, :is_active, :eis_sync_date
  json.url media_space_section_url(media_space_section, format: :json)
end
