json.array!(@client_contracts) do |client_contract|
  json.extract! client_contract, :id, :uid, :code, :code_external, :company_id, :company_division_id, :client_id, :client_product_id, :campaign_id, :campaign_schedule_id, :client_contact_id, :owner_system_app_user_id, :currency_id, :creation_source_id, :status_id, :communication_status_id, :actual_date, :gross_amount, :commission_amount, :nett_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :exchange_rate, :notes, :status_reason, :grid_layout_x_m_l, :eis_sync_date, :revision_no
  json.url client_contract_url(client_contract, format: :json)
end
