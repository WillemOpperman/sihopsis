class ClientCostEstimateStatusesController < ApplicationController
  before_action :set_client_cost_estimate_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_cost_estimate_statuses = ClientCostEstimateStatus.all
    respond_with(@client_cost_estimate_statuses)
  end

  def show
    respond_with(@client_cost_estimate_status)
  end

  def new
    @client_cost_estimate_status = ClientCostEstimateStatus.new
    respond_with(@client_cost_estimate_status)
  end

  def edit
  end

  def create
    @client_cost_estimate_status = ClientCostEstimateStatus.new(client_cost_estimate_status_params)
    @client_cost_estimate_status.save
    respond_with(@client_cost_estimate_status)
  end

  def update
    @client_cost_estimate_status.update(client_cost_estimate_status_params)
    respond_with(@client_cost_estimate_status)
  end

  def destroy
    @client_cost_estimate_status.destroy
    respond_with(@client_cost_estimate_status)
  end

  private
    def set_client_cost_estimate_status
      @client_cost_estimate_status = ClientCostEstimateStatus.find(params[:id])
    end

    def client_cost_estimate_status_params
      params.require(:client_cost_estimate_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date, :is_status_active)
    end
end
