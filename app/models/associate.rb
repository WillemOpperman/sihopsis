class Associate < ActiveRecord::Base

  has_paper_trail

    belongs_to :company_division
    belongs_to :default_contact
    belongs_to :default_tax_type
    belongs_to :default_currency
    belongs_to :default_creative_agency
  
    attr_accessible :bank_account_no, :bank_branch_name, :bank_branch_no, :bank_name, :code, :code_external, :company_registration_no, :default_agency_commission_percentage, :e_mail, :eis_sync_date, :exposure120, :exposure30, :exposure60, :exposure90, :exposure_current, :exposure_date_modified, :fax_number, :financial_year_end, :is_active, :is_digital_proof_preview_required, :is_digital_proof_required, :is_physical_proof_required, :is_purchase_order_amount_enforced, :is_purchase_order_approval_required_to_use, :is_purchase_order_required_to_book, :is_purchase_order_user_editable, :media_credit_note_name, :media_debit_note_name, :name, :offical_name, :payment_terms, :phone_number, :physical_address, :postal_address, :tax_registration_no, :uid
  
  def to_s
    name
  end

end
