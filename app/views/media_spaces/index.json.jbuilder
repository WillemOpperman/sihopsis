json.array!(@media_spaces) do |media_space|
  json.extract! media_space, :id, :uid, :code, :name, :media_owner_id, :media_category_id, :frequency_type_id, :is_arbitrage, :default_material_deadline_days_id, :default_cancellation_days_id, :business_unit_id, :creation_source_id, :eis_sync_date, :is_active, :m_b_r_system_app_integration_export_prover_id, :m_i_system_app_integration_export_prover_id
  json.url media_space_url(media_space, format: :json)
end
