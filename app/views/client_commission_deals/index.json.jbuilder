json.array!(@client_commission_deals) do |client_commission_deal|
  json.extract! client_commission_deal, :id, :code, :uid, :company_division_id, :client_id, :client_product_id, :media_category_id, :supplier_id, :media_space_id, :start_date, :expiry_date, :agency_commission_percentage, :client_share_commission_percentage, :members_share_sum_commission_percentage, :remaining_share_revenue_commission_percentage, :is_active, :is_calc_commission_share_after_discount_deal, :media_category_size_id
  json.url client_commission_deal_url(client_commission_deal, format: :json)
end
