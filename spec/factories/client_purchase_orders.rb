FactoryGirl.define do
  factory :client_purchase_order do
    uid ""
code "MyString"
code_external "MyString"
description "MyString"
client nil
client_product nil
status nil
gross_amount "9.99"
commission_amount "9.99"
nett_amount "9.99"
order_date "2014-12-25"
order_expiry_date "2014-12-25"
owner_user nil
related nil
creation_source nil
eis_sync_date "2014-12-25 16:41:39"
currency nil
exchange_rate "9.99"
gross_home_amount "9.99"
commission_home_amount "9.99"
nett_home_amount "9.99"
pre_billing_manual_client_financial_document_code "MyString"
  end

end
