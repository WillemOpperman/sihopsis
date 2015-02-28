json.array!(@campaign_schedules) do |campaign_schedule|
  json.extract! campaign_schedule, :id, :uid, :code, :code_external, :name, :company_division_id, :campaign_id, :default_client_product_id, :default_client_product_sub_id, :owner_system_app_user_id, :manager_system_app_user_id, :default_client_contact_id, :default_creative_agency_id, :default_creative_agency_contact_id, :default_media_agency_client_id, :default_media_agency_client_contact_id, :default_natural_client_id, :default_natural_client_product_id, :default_natural_client_contact_id, :client_purchase_order_id, :media_category_id, :media_region_id, :comments, :gross_budget, :start_date, :finish_date, :creation_source_id, :eis_sync_date
  json.url campaign_schedule_url(campaign_schedule, format: :json)
end
