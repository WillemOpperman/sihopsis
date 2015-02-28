json.array!(@associate_financial_document_lines) do |associate_financial_document_line|
  json.extract! associate_financial_document_line, :id, :uid, :code, :associate_financial_document_id, :client_financial_document_line_id, :campaign_schedule_placement_id, :client_commission_deal_associate_member_id, :client_billing_setting_line_id, :media_category_id, :amount, :amount_home, :tax_amount, :amount_inc_tax_amount, :amount_inc_tax_home_amount, :eis_sync_date
  json.url associate_financial_document_line_url(associate_financial_document_line, format: :json)
end
