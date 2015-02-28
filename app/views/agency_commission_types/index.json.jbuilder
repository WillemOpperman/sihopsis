json.array!(@agency_commission_types) do |agency_commission_type|
  json.extract! agency_commission_type, :id, :uid, :code, :name, :media_category_id, :is_calculated_as_nett_marked_up_by_agency_comm_perc, :is_calculated_as_gross_marked_up_by_agency_comm_perc, :is_default, :eis_sync_date
  json.url agency_commission_type_url(agency_commission_type, format: :json)
end
