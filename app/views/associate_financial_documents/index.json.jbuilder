json.array!(@associate_financial_documents) do |associate_financial_document|
  json.extract! associate_financial_document, :id, :uid, :code, :code_external, :company_id, :company_division_id, :associate_id, :contact_id, :campaign_id, :campaign_schedule_id, :owner_system_app_user_id, :currency_id, :creation_source_id, :status_id, :communication_status_id, :company_cost_centre_id, :actual_date, :posting_date, :amount, :amount_home, :tax_amount, :amount_inc_tax_amount, :amount_inc_tax_home_amount, :tax_type_id, :exchange_rate, :notes, :status_reason, :grid_layout_x_m_l, :eis_sync_date
  json.url associate_financial_document_url(associate_financial_document, format: :json)
end
