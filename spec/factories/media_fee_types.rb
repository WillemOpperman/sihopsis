FactoryGirl.define do
  factory :media_fee_type do
    uid ""
code "MyString"
name "MyString"
media_category nil
supplier nil
media_space nil
media_space_part nil
media_category_size nil
media_category_format nil
is_calculated_off_rate false
is_amount_based false
is_default false
is_only_allowed_once_per_placement false
default_fee_amount "9.99"
eis_sync_date "2014-12-25 16:42:15"
  end

end
