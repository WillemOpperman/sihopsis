json.array!(@campaign_schedule_placement_proposed_changes) do |campaign_schedule_placement_proposed_change|
  json.extract! campaign_schedule_placement_proposed_change, :id, :uid, :code, :original_campaign_schedule_placement_id, :proposed_campaign_schedule_placement_id, :proposed_system_app_user_id, :approval_system_app_user_id, :is_cancellation_request, :is_approved, :is_rejected, :status_reason, :status_date, :change_reason, :is_closed, :client_financial_document_line_id
  json.url campaign_schedule_placement_proposed_change_url(campaign_schedule_placement_proposed_change, format: :json)
end
