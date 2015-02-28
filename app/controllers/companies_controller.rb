class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def show
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.save
    respond_with(@company)
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @company.destroy
    respond_with(@company)
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:uid, :code, :name, :default_currency_id, :c_e_i_s_password, :c_e_i_s_media_placement_data_web_service_address, :c_e_i_s_digital_proof_item_web_service_address, :sup_inv_paid_to_billed_tolerance, :is_multi_branch_paying_allowed, :campaign_no_of_days_open_ahead_id, :campaign_no_of_days_open_behind_id, :no_of_digits_for_codes, :client_invoice_credit_note_billed_payed_tolerance, :is_client_group_security_enabled, :is_division_group_security_enabled)
    end
end
