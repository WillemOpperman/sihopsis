FactoryGirl.define do
  factory :client_billing_setting_line do
    uid ""
code "MyString"
client_billing_setting nil
client_billing_type nil
media_category nil
is_order_no_required false
is_m_i_required false
is_media_space_contract_code_required_to_bill false
is_d_p_i_required_to_bill false
is_billed_by_billable_days false
is_billing_restricted_to_live_start_date false
m_inv_custom_report nil
m_inv_ad_nt_custom_report nil
m_cr_nt_custom_report nil
m_cr_nt_ad_nt_custom_report nil
m_com_cr_dr_nt_report nil
is_placement_ordered_required_to_bill false
is_billable false
custom_logo_path "MyString"
  end

end
