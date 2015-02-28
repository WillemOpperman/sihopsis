json.array!(@creative_agency_chase_list_lines) do |creative_agency_chase_list_line|
  json.extract! creative_agency_chase_list_line, :id, :uid, :code, :name, :creative_agency_chase_list_id, :campaign_schedule_placement_id, :material_contact_id, :material_delivery_method, :material_delivery_address, :routing_address_summary, :material_production_date, :media_space_part_type_id, :revision_no, :is_changed_in_current_revision, :revision_change_details, :eis_sync_date, :notes
  json.url creative_agency_chase_list_line_url(creative_agency_chase_list_line, format: :json)
end
