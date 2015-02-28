json.array!(@creative_agency_chase_lists) do |creative_agency_chase_list|
  json.extract! creative_agency_chase_list, :id, :uid, :code, :name, :status_id, :material_contact_id, :creative_agency_id, :creative_agency_contact_id, :media_category_id, :issued_date, :notes, :revision_no, :creation_source_id, :communication_status_id, :eis_sync_date
  json.url creative_agency_chase_list_url(creative_agency_chase_list, format: :json)
end
