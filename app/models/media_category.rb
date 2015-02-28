class MediaCategory < ActiveRecord::Base

  has_paper_trail

    belongs_to :type
    belongs_to :parent
    belongs_to :default_material_deadline_days
    belongs_to :default_cancellation_days
    belongs_to :default_d_p_i_e_i_s_service_prover
    belongs_to :default_media_advert_source
  
    attr_accessible :code, :code_external, :colour, :eis_sync_date, :g_l_acc_no_commission_revenue, :g_l_acc_no_commission_revenue_rebate_to_client, :g_l_acc_no_commission_to_associates_expense, :g_l_acc_no_media_billing_control, :g_l_acc_no_media_rev_by_media_type, :is_active, :name, :uid
  
  def to_s
    name
  end

end
