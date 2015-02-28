json.array!(@media_categories) do |media_category|
  json.extract! media_category, :id, :uid, :code, :code_external, :name, :type_id, :parent_id, :g_l_acc_no_media_rev_by_media_type, :g_l_acc_no_media_billing_control, :g_l_acc_no_commission_revenue, :g_l_acc_no_commission_revenue_rebate_to_client, :g_l_acc_no_commission_to_associates_expense, :default_material_deadline_days_id, :default_cancellation_days_id, :colour, :default_d_p_i_e_i_s_service_prover_id, :eis_sync_date, :default_media_advert_source_id, :is_active
  json.url media_category_url(media_category, format: :json)
end
