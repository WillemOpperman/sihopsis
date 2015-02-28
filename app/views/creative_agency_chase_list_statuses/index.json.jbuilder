json.array!(@creative_agency_chase_list_statuses) do |creative_agency_chase_list_status|
  json.extract! creative_agency_chase_list_status, :id, :uid, :code, :name, :is_active, :is_cancelled, :is_revised, :is_default, :eis_sync_date
  json.url creative_agency_chase_list_status_url(creative_agency_chase_list_status, format: :json)
end
