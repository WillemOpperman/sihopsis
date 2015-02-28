class ClientCostEstimatesController < ApplicationController
  before_action :set_client_cost_estimate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_cost_estimates = ClientCostEstimate.all
    respond_with(@client_cost_estimates)
  end

  def show
    respond_with(@client_cost_estimate)
  end

  def new
    @client_cost_estimate = ClientCostEstimate.new
    respond_with(@client_cost_estimate)
  end

  def edit
  end

  def create
    @client_cost_estimate = ClientCostEstimate.new(client_cost_estimate_params)
    @client_cost_estimate.save
    respond_with(@client_cost_estimate)
  end

  def update
    @client_cost_estimate.update(client_cost_estimate_params)
    respond_with(@client_cost_estimate)
  end

  def destroy
    @client_cost_estimate.destroy
    respond_with(@client_cost_estimate)
  end

  private
    def set_client_cost_estimate
      @client_cost_estimate = ClientCostEstimate.find(params[:id])
    end

    def client_cost_estimate_params
      params.require(:client_cost_estimate).permit(:uid, :code, :code_external, :company_id, :company_division_id, :client_id, :client_product_id, :campaign_id, :campaign_schedule_id, :client_contact_id, :owner_user_id, :currency_id, :creation_source_id, :status_id, :communication_status_id, :actual_date, :gross_amount, :commission_amount, :nett_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :exchange_rate, :notes, :status_reason, :grid_layout_x_m_l, :eis_sync_date, :revision_no)
    end
end
