json.array!(@companies) do |company|
  json.extract! company, :id, :uid, :code, :name, :default_currency_id, :c_e_i_s_password, :c_e_i_s_media_placement_data_web_service_address, :c_e_i_s_digital_proof_item_web_service_address, :sup_inv_paid_to_billed_tolerance, :is_multi_branch_paying_allowed, :campaign_no_of_days_open_ahead_id, :campaign_no_of_days_open_behind_id, :no_of_digits_for_codes, :client_invoice_credit_note_billed_payed_tolerance, :is_client_group_security_enabled, :is_division_group_security_enabled
  json.url company_url(company, format: :json)
end
