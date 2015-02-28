class ClientBillingSettingsController < ApplicationController
  before_action :set_client_billing_setting, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_billing_settings = ClientBillingSetting.all
    respond_with(@client_billing_settings)
  end

  def show
    respond_with(@client_billing_setting)
  end

  def new
    @client_billing_setting = ClientBillingSetting.new
    respond_with(@client_billing_setting)
  end

  def edit
  end

  def create
    @client_billing_setting = ClientBillingSetting.new(client_billing_setting_params)
    @client_billing_setting.save
    respond_with(@client_billing_setting)
  end

  def update
    @client_billing_setting.update(client_billing_setting_params)
    respond_with(@client_billing_setting)
  end

  def destroy
    @client_billing_setting.destroy
    respond_with(@client_billing_setting)
  end

  private
    def set_client_billing_setting
      @client_billing_setting = ClientBillingSetting.find(params[:id])
    end

    def client_billing_setting_params
      params.require(:client_billing_setting).permit(:code, :uid, :company_division_id, :client_id, :client_product_id, :start_date, :expiry_date, :is_active, :media_category_id, :supplier_id, :media_space_id)
    end
end
