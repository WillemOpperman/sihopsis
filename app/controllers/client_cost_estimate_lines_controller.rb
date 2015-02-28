class ClientCostEstimateLinesController < ApplicationController
  before_action :set_client_cost_estimate_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_cost_estimate_lines = ClientCostEstimateLine.all
    respond_with(@client_cost_estimate_lines)
  end

  def show
    respond_with(@client_cost_estimate_line)
  end

  def new
    @client_cost_estimate_line = ClientCostEstimateLine.new
    respond_with(@client_cost_estimate_line)
  end

  def edit
  end

  def create
    @client_cost_estimate_line = ClientCostEstimateLine.new(client_cost_estimate_line_params)
    @client_cost_estimate_line.save
    respond_with(@client_cost_estimate_line)
  end

  def update
    @client_cost_estimate_line.update(client_cost_estimate_line_params)
    respond_with(@client_cost_estimate_line)
  end

  def destroy
    @client_cost_estimate_line.destroy
    respond_with(@client_cost_estimate_line)
  end

  private
    def set_client_cost_estimate_line
      @client_cost_estimate_line = ClientCostEstimateLine.find(params[:id])
    end

    def client_cost_estimate_line_params
      params.require(:client_cost_estimate_line).permit(:uid, :code, :client_cost_estimate_id, :campaign_schedule_placement_id, :gross_amount, :commission_amount, :nett_amount, :revision_no, :notes, :eis_sync_date, :is_active, :revision_change_details, :is_changed_in_current_revision, :change_reason)
    end
end
