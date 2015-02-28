FactoryGirl.define do
  factory :client_commission_deal do
    code "MyString"
uid ""
company_division nil
client nil
client_product nil
media_category nil
supplier nil
media_space nil
start_date "2014-12-23"
expiry_date "2014-12-23"
agency_commission_percentage "9.99"
client_share_commission_percentage "9.99"
members_share_sum_commission_percentage "9.99"
remaining_share_revenue_commission_percentage "9.99"
is_active false
is_calc_commission_share_after_discount_deal false
media_category_size nil
  end

end
