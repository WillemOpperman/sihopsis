FactoryGirl.define do
  factory :rate_type do
    uid ""
code "MyString"
name "MyString"
media_category nil
is_default false
is_calculated_as_rate_x_size_x_columns false
is_calculated_as_rate_x_size_x_columns_over_quantity_per_unit_rate_x_quantity false
is_calculated_as_rate_over_quantity_per_unit_rate_x_quantity false
is_added_value false
default_quantity_per_unit_rate "9.99"
eis_sync_date "2014-12-25 16:42:48"
is_active false
  end

end
