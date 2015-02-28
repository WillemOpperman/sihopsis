FactoryGirl.define do
  factory :discount_card do
    uid ""
discount_standard 1.5
discount_negotiated 1.5
discount_early_booking 1.5
discount_other1 1.5
discount_other2 1.5
specific_company_division nil
supplier_group nil
supplier nil
supplier_product nil
client_group nil
client nil
client_product nil
media_space nil
media_space_part nil
media_space_section nil
media_category_size nil
media_category_format nil
is_active false
start_date "2014-12-25"
expiry_date "2014-12-25"
description "MyString"
supplier_contact nil
is_calculated false
is_gross false
  end

end
