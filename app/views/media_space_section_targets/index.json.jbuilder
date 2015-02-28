json.array!(@media_space_section_targets) do |media_space_section_target|
  json.extract! media_space_section_target, :id, :uid, :code, :media_space_section_id, :media_target_id, :is_active, :eis_sync_date
  json.url media_space_section_target_url(media_space_section_target, format: :json)
end
