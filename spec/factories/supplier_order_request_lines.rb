FactoryGirl.define do
  factory :supplier_order_request_line do
    uid ""
code "MyString"
revision_no 1
supplier_order_request nil
campaign_schedule_placement nil
order_gross_amount "9.99"
order_commission_amount "9.99"
order_nett_amount "9.99"
commission_percent "9.99"
eis_sync_date "2014-12-25 16:43:04"
order_gross_amount_home "9.99"
order_commission_amount_home "9.99"
order_nett_amount_home "9.99"
is_active false
is_changed_in_current_revision false
revision_change_details "MyString"
change_reason "MyString"
notes "MyString"
  end

end
