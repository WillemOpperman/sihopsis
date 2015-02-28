FactoryGirl.define do
  factory :client_billing_type do
    uid ""
code "MyString"
company_division nil
name "MyString"
sort_order nil
is_split_by_client false
is_split_by_campaign false
is_split_by_campaign_schedule false
is_split_by_order_no false
is_split_by_campaign_schedule_placement false
is_split_by_media_space false
is_split_by_client_material false
is_split_by_week false
company nil
is_default false
is_split_by_month false
is_split_by_year false
  end

end
