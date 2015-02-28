class ClientBillingSettingLinesController < ApplicationController
  before_action :set_client_billing_setting_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_billing_setting_lines = ClientBillingSettingLine.all
    respond_with(@client_billing_setting_lines)
  end

  def show
    respond_with(@client_billing_setting_line)
  end

  def new
    @client_billing_setting_line = ClientBillingSettingLine.new
    respond_with(@client_billing_setting_line)
  end

  def edit
  end

  def create
    @client_billing_setting_line = ClientBillingSettingLine.new(client_billing_setting_line_params)
    @client_billing_setting_line.save
    respond_with(@client_billing_setting_line)
  end

  def update
    @client_billing_setting_line.update(client_billing_setting_line_params)
    respond_with(@client_billing_setting_line)
  end

  def destroy
    @client_billing_setting_line.destroy
    respond_with(@client_billing_setting_line)
  end

  private
    def set_client_billing_setting_line
      @client_billing_setting_line = ClientBillingSettingLine.find(params[:id])
    end

    def client_billing_setting_line_params
      params.require(:client_billing_setting_line).permit(:uid, :code, :client_billing_setting_id, :client_billing_type_id, :media_category_id, :is_order_no_required, :is_m_i_required, :is_media_space_contract_code_required_to_bill, :is_d_p_i_required_to_bill, :is_billed_by_billable_days, :is_billing_restricted_to_live_start_date, :m_inv_custom_report_id, :m_inv_ad_nt_custom_report_id, :m_cr_nt_custom_report_id, :m_cr_nt_ad_nt_custom_report_id, :m_com_cr_dr_nt_report_id, :is_placement_ordered_required_to_bill, :is_billable, :custom_logo_path)
    end
end
