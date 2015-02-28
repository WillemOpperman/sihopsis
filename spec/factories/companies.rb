FactoryGirl.define do
  factory :company do
    uid ""
code "MyString"
name "MyString"
default_currency nil
c_e_i_s_password "MyString"
c_e_i_s_media_placement_data_web_service_address "MyString"
c_e_i_s_digital_proof_item_web_service_address "MyString"
sup_inv_paid_to_billed_tolerance "9.99"
is_multi_branch_paying_allowed false
campaign_no_of_days_open_ahead nil
campaign_no_of_days_open_behind nil
no_of_digits_for_codes 1
client_invoice_credit_note_billed_payed_tolerance "9.99"
is_client_group_security_enabled false
is_division_group_security_enabled false
  end

end
