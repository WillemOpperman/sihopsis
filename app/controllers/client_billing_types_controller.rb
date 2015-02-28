class ClientBillingTypesController < ApplicationController
  before_action :set_client_billing_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_billing_types = ClientBillingType.all
    respond_with(@client_billing_types)
  end

  def show
    respond_with(@client_billing_type)
  end

  def new
    @client_billing_type = ClientBillingType.new
    respond_with(@client_billing_type)
  end

  def edit
  end

  def create
    @client_billing_type = ClientBillingType.new(client_billing_type_params)
    @client_billing_type.save
    respond_with(@client_billing_type)
  end

  def update
    @client_billing_type.update(client_billing_type_params)
    respond_with(@client_billing_type)
  end

  def destroy
    @client_billing_type.destroy
    respond_with(@client_billing_type)
  end

  private
    def set_client_billing_type
      @client_billing_type = ClientBillingType.find(params[:id])
    end

    def client_billing_type_params
      params.require(:client_billing_type).permit(:uid, :code, :company_division_id, :name, :sort_order_id, :is_split_by_client, :is_split_by_campaign, :is_split_by_campaign_schedule, :is_split_by_order_no, :is_split_by_campaign_schedule_placement, :is_split_by_media_space, :is_split_by_client_material, :is_split_by_week, :company_id, :is_default, :is_split_by_month, :is_split_by_year)
    end
end
