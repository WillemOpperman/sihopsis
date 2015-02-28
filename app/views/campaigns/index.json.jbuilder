json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :uid, :code, :code_external, :name, :additional_name, :company_division_id, :status_id, :client_id, :default_client_product_id, :default_client_product_sub_id, :default_creative_agency_id, :default_media_agency_client_id, :default_natural_client_id, :default_natural_client_product_id, :owner_system_app_user_id, :manager_system_app_user_id, :default_client_contact_id, :default_creative_agency_contact_id, :default_media_agency_client_contact_id, :default_natural_client_contact_id, :client_purchase_order_id, :creation_source_id, :start_date, :finish_date, :eis_sync_date
  json.url campaign_url(campaign, format: :json)
end
