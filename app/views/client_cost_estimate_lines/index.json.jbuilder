json.array!(@client_cost_estimate_lines) do |client_cost_estimate_line|
  json.extract! client_cost_estimate_line, :id, :uid, :code, :client_cost_estimate_id, :campaign_schedule_placement_id, :gross_amount, :commission_amount, :nett_amount, :revision_no, :notes, :eis_sync_date, :is_active, :revision_change_details, :is_changed_in_current_revision, :change_reason
  json.url client_cost_estimate_line_url(client_cost_estimate_line, format: :json)
end
