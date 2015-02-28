class CampaignSchedulePlacementProductionCostsController < ApplicationController
  before_action :set_campaign_schedule_placement_production_cost, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_production_costs = CampaignSchedulePlacementProductionCost.all
    respond_with(@campaign_schedule_placement_production_costs)
  end

  def show
    respond_with(@campaign_schedule_placement_production_cost)
  end

  def new
    @campaign_schedule_placement_production_cost = CampaignSchedulePlacementProductionCost.new
    respond_with(@campaign_schedule_placement_production_cost)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_production_cost = CampaignSchedulePlacementProductionCost.new(campaign_schedule_placement_production_cost_params)
    @campaign_schedule_placement_production_cost.save
    respond_with(@campaign_schedule_placement_production_cost)
  end

  def update
    @campaign_schedule_placement_production_cost.update(campaign_schedule_placement_production_cost_params)
    respond_with(@campaign_schedule_placement_production_cost)
  end

  def destroy
    @campaign_schedule_placement_production_cost.destroy
    respond_with(@campaign_schedule_placement_production_cost)
  end

  private
    def set_campaign_schedule_placement_production_cost
      @campaign_schedule_placement_production_cost = CampaignSchedulePlacementProductionCost.find(params[:id])
    end

    def campaign_schedule_placement_production_cost_params
      params.require(:campaign_schedule_placement_production_cost).permit(:uid, :code, :campaign_schedule_placement_id, :supplier_id, :supplier_contact_id, :production_cost_type_id, :unit_cost_amount, :units_id, :production_cost_amount, :production_cost_home_amount, :ordered_production_cost_amount_to_date, :ordered_production_cost_amount_to_date_home, :supplier_invoiced_production_cost_to_date_amount, :supplier_invoiced_production_cost_to_date_home_amount, :production_cost_margin_percentage, :production_cost_margin_amount, :production_cost_margin_home_amount, :production_client_billable_amount, :production_client_billable_home_amount, :production_client_billable_inc_tax_amount, :production_client_billable_inc_tax_home_amount, :production_cost_margin_to_date_amount, :production_cost_margin_to_date_home_amount, :production_client_invoiced_to_date_amount, :production_client_invoiced_to_date_home_amount, :production_client_invoiced_inc_tax_to_date_amount, :production_client_invoiced_inc_tax_to_date_home_amount, :tax_type_id, :currency_id, :exchange_rate, :notes, :creation_source_id, :eis_sync_date, :material_production_date, :quantity_per_unit_cost)
    end
end
