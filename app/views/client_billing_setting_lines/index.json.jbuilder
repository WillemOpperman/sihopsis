json.array!(@client_billing_setting_lines) do |client_billing_setting_line|
  json.extract! client_billing_setting_line, :id, :uid, :code, :client_billing_setting_id, :client_billing_type_id, :media_category_id, :is_order_no_required, :is_m_i_required, :is_media_space_contract_code_required_to_bill, :is_d_p_i_required_to_bill, :is_billed_by_billable_days, :is_billing_restricted_to_live_start_date, :m_inv_custom_system_app_report_id, :m_inv_ad_nt_custom_system_app_report_id, :m_cr_nt_custom_system_app_report_id, :m_cr_nt_ad_nt_custom_system_app_report_id, :m_com_cr_dr_nt_system_app_report_id, :is_placement_ordered_required_to_bill, :is_billable, :custom_logo_path
  json.url client_billing_setting_line_url(client_billing_setting_line, format: :json)
end
