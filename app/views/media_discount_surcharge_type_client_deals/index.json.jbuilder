json.array!(@media_discount_surcharge_type_client_deals) do |media_discount_surcharge_type_client_deal|
  json.extract! media_discount_surcharge_type_client_deal, :id, :uid, :code, :name, :media_discount_surcharge_type_id, :client_id, :client_product_id, :is_client_share_calculated_off_rate, :is_client_share_amount_based, :client_share_percentage, :client_share_amount, :eis_sync_date, :is_default, :is_active
  json.url media_discount_surcharge_type_client_deal_url(media_discount_surcharge_type_client_deal, format: :json)
end
