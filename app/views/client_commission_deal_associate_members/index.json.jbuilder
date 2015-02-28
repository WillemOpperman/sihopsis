json.array!(@client_commission_deal_associate_members) do |client_commission_deal_associate_member|
  json.extract! client_commission_deal_associate_member, :id, :uid, :code, :client_commission_deal_id, :associate_id, :associate_product_id, :member_commission_split_percentage
  json.url client_commission_deal_associate_member_url(client_commission_deal_associate_member, format: :json)
end
