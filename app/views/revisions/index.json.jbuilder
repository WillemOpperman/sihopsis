json.array!(@revisions) do |revision|
  json.extract! revision, :id, :uid, :code, :company_division_id, :parent_id, :parent_system_app_entity_view_id, :change_h_t_m_l_report, :change_x_m_l, :creation_source_id, :eis_sync_date
  json.url revision_url(revision, format: :json)
end
