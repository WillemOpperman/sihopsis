FactoryGirl.define do
  factory :supplier_order do
    uid ""
code "MyString"
code_external "MyString"
company_division nil
campaign_schedule nil
supplier nil
media_space nil
contact nil
communication_status nil
creation_source nil
revision_no 1
order_gross_amount "9.99"
order_commission_amount "9.99"
order_nett_amount "9.99"
tax_type nil
tax_gross_amount "9.99"
tax_nett_amount "9.99"
eis_sync_date "2014-12-25 16:43:00"
order_gross_amount_home "9.99"
order_commission_amount_home "9.99"
order_nett_amount_home "9.99"
tax_gross_amount_home "9.99"
tax_nett_amount_home "9.99"
exchange_rate "9.99"
currency nil
status nil
order_nett_inc_tax_amount "9.99"
  end

end
