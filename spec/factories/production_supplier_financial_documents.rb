FactoryGirl.define do
  factory :production_supplier_financial_document do
    uid ""
code "MyString"
supplier nil
contact nil
status nil
production_wanted_cost_amount "9.99"
production_wanted_cost_home_amount "9.99"
production_cost_amount "9.99"
production_cost_home_amount "9.99"
production_cost_tax_amount "9.99"
production_cost_tax_home_amount "9.99"
production_cost_inc_tax_amount "9.99"
production_cost_inc_tax_home_amount "9.99"
currency nil
exchange_rate "9.99"
tax_type nil
notes "MyString"
actual_date "2014-12-25"
posting_date "2014-12-25"
communication_status nil
creation_source nil
eis_sync_date "2014-12-25 16:42:39"
  end

end
