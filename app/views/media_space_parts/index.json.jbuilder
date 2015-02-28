json.array!(@media_space_parts) do |media_space_part|
  json.extract! media_space_part, :id, :uid, :code, :name, :media_space_id, :creation_source_id, :type_id, :media_space_section_id, :media_space_date, :from_time, :to_time, :default_material_deadline_days_id, :default_cancellation_days_id, :eis_sync_date, :media_category_id
  json.url media_space_part_url(media_space_part, format: :json)
end
