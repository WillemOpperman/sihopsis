json.array!(@campaign_schedule_placement_cost_allocation_splits) do |campaign_schedule_placement_cost_allocation_split|
  json.extract! campaign_schedule_placement_cost_allocation_split, :id, :uid, :code, :name, :campaign_schedule_placement_id, :company_cost_centre_id, :company_accounting_period_id, :split_percentage, :is_taken, :taken_date_time, :creation_source_id, :eis_sync_date, :additional_company_cost_centre_id, :journals_document_line_id
  json.url campaign_schedule_placement_cost_allocation_split_url(campaign_schedule_placement_cost_allocation_split, format: :json)
end
