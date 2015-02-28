class ClientFinancialDocumentLineProductionCostsController < ApplicationController
  before_action :set_client_financial_document_line_production_cost, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_financial_document_line_production_costs = ClientFinancialDocumentLineProductionCost.all
    respond_with(@client_financial_document_line_production_costs)
  end

  def show
    respond_with(@client_financial_document_line_production_cost)
  end

  def new
    @client_financial_document_line_production_cost = ClientFinancialDocumentLineProductionCost.new
    respond_with(@client_financial_document_line_production_cost)
  end

  def edit
  end

  def create
    @client_financial_document_line_production_cost = ClientFinancialDocumentLineProductionCost.new(client_financial_document_line_production_cost_params)
    @client_financial_document_line_production_cost.save
    respond_with(@client_financial_document_line_production_cost)
  end

  def update
    @client_financial_document_line_production_cost.update(client_financial_document_line_production_cost_params)
    respond_with(@client_financial_document_line_production_cost)
  end

  def destroy
    @client_financial_document_line_production_cost.destroy
    respond_with(@client_financial_document_line_production_cost)
  end

  private
    def set_client_financial_document_line_production_cost
      @client_financial_document_line_production_cost = ClientFinancialDocumentLineProductionCost.find(params[:id])
    end

    def client_financial_document_line_production_cost_params
      params.require(:client_financial_document_line_production_cost).permit(:uid, :code, :client_financial_document_line_id, :campaign_schedule_placement_production_cost_id, :production_cost_amount, :production_cost_home_amount, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_cost_with_margin_amount, :production_cost_with_margin_home_amount, :eis_sync_date)
    end
end
