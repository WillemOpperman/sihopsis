class Company < ActiveRecord::Base

  has_paper_trail

    belongs_to :default_currency
    belongs_to :campaign_no_of_days_open_ahead
    belongs_to :campaign_no_of_days_open_behind
  
    attr_accessible :c_e_i_s_digital_proof_item_web_service_address, :c_e_i_s_media_placement_data_web_service_address, :c_e_i_s_password, :client_invoice_credit_note_billed_payed_tolerance, :code, :is_client_group_security_enabled, :is_division_group_security_enabled, :is_multi_branch_paying_allowed, :name, :no_of_digits_for_codes, :sup_inv_paid_to_billed_tolerance, :uid
  
  def to_s
    name
  end

end
