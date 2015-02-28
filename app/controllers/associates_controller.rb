class AssociatesController < ApplicationController
  before_action :set_associate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @associates = Associate.all
    respond_with(@associates)
  end

  def show
    respond_with(@associate)
  end

  def new
    @associate = Associate.new
    respond_with(@associate)
  end

  def edit
  end

  def create
    @associate = Associate.new(associate_params)
    @associate.save
    respond_with(@associate)
  end

  def update
    @associate.update(associate_params)
    respond_with(@associate)
  end

  def destroy
    @associate.destroy
    respond_with(@associate)
  end

  private
    def set_associate
      @associate = Associate.find(params[:id])
    end

    def associate_params
      params.require(:associate).permit(:code, :code_external, :uid, :name, :offical_name, :company_division_id, :company_registration_no, :default_contact_id, :phone_number, :fax_number, :e_mail, :postal_address, :physical_address, :payment_terms, :tax_registration_no, :default_tax_type_id, :financial_year_end, :default_agency_commission_percentage, :default_currency_id, :default_creative_agency_id, :exposure_current, :exposure30, :exposure60, :exposure90, :exposure120, :exposure_date_modified, :bank_name, :bank_account_no, :bank_branch_no, :bank_branch_name, :media_debit_note_name, :media_credit_note_name, :is_digital_proof_required, :is_digital_proof_preview_required, :is_physical_proof_required, :is_purchase_order_user_editable, :is_purchase_order_required_to_book, :is_purchase_order_approval_required_to_use, :is_purchase_order_amount_enforced, :is_active, :eis_sync_date)
    end
end
