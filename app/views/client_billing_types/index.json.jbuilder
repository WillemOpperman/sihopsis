json.array!(@client_billing_types) do |client_billing_type|
  json.extract! client_billing_type, :id, :uid, :code, :company_division_id, :name, :sort_order_id, :is_split_by_client, :is_split_by_campaign, :is_split_by_campaign_schedule, :is_split_by_order_no, :is_split_by_campaign_schedule_placement, :is_split_by_media_space, :is_split_by_client_material, :is_split_by_week, :company_id, :is_default, :is_split_by_month, :is_split_by_year
  json.url client_billing_type_url(client_billing_type, format: :json)
end
