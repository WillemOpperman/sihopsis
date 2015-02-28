json.array!(@client_contract_lines) do |client_contract_line|
  json.extract! client_contract_line, :id, :uid, :code, :client_contract_id, :campaign_schedule_placement_id, :gross_amount, :commission_amount, :nett_amount, :revision_no, :notes, :eis_sync_date, :is_active, :is_changed_in_current_revision, :revision_change_details, :change_reason
  json.url client_contract_line_url(client_contract_line, format: :json)
end
