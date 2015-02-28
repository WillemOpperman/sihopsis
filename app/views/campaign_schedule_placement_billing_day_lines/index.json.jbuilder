json.array!(@campaign_schedule_placement_billing_day_lines) do |campaign_schedule_placement_billing_day_line|
  json.extract! campaign_schedule_placement_billing_day_line, :id, :uid, :code, :campaign_schedule_placement_id, :percent_of_total, :quantity, :gross_amount, :commission_amount, :fees_amount, :nett_amount, :is_billed, :is_credited, :notes, :eis_sync_date, :client_financial_document_line_id, :billing_day_start_date, :billing_day_end_date, :creation_source_id, :gross_home_amount, :commission_home_amount, :fees_home_amount, :nett_home_amount, :parent_id
  json.url campaign_schedule_placement_billing_day_line_url(campaign_schedule_placement_billing_day_line, format: :json)
end
