class ClientBillingSettingLine < ActiveRecord::Base

  has_paper_trail

    belongs_to :client_billing_setting
    belongs_to :client_billing_type
    belongs_to :media_category
    belongs_to :m_inv_custom_report
    belongs_to :m_inv_ad_nt_custom_report
    belongs_to :m_cr_nt_custom_report
    belongs_to :m_cr_nt_ad_nt_custom_report
    belongs_to :m_com_cr_dr_nt_report
  
    attr_accessible :code, :custom_logo_path, :is_billable, :is_billed_by_billable_days, :is_billing_restricted_to_live_start_date, :is_d_p_i_required_to_bill, :is_m_i_required, :is_media_space_contract_code_required_to_bill, :is_order_no_required, :is_placement_ordered_required_to_bill, :uid
  
  def to_s
    "ClientBillingSettingLine #{id}"
  end

end
