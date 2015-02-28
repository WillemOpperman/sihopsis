class CampaignSchedulePlacementCostAllocationSplitsController < ApplicationController
  before_action :set_campaign_schedule_placement_cost_allocation_split, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_cost_allocation_splits = CampaignSchedulePlacementCostAllocationSplit.all
    respond_with(@campaign_schedule_placement_cost_allocation_splits)
  end

  def show
    respond_with(@campaign_schedule_placement_cost_allocation_split)
  end

  def new
    @campaign_schedule_placement_cost_allocation_split = CampaignSchedulePlacementCostAllocationSplit.new
    respond_with(@campaign_schedule_placement_cost_allocation_split)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_cost_allocation_split = CampaignSchedulePlacementCostAllocationSplit.new(campaign_schedule_placement_cost_allocation_split_params)
    @campaign_schedule_placement_cost_allocation_split.save
    respond_with(@campaign_schedule_placement_cost_allocation_split)
  end

  def update
    @campaign_schedule_placement_cost_allocation_split.update(campaign_schedule_placement_cost_allocation_split_params)
    respond_with(@campaign_schedule_placement_cost_allocation_split)
  end

  def destroy
    @campaign_schedule_placement_cost_allocation_split.destroy
    respond_with(@campaign_schedule_placement_cost_allocation_split)
  end

  private
    def set_campaign_schedule_placement_cost_allocation_split
      @campaign_schedule_placement_cost_allocation_split = CampaignSchedulePlacementCostAllocationSplit.find(params[:id])
    end

    def campaign_schedule_placement_cost_allocation_split_params
      params.require(:campaign_schedule_placement_cost_allocation_split).permit(:uid, :code, :name, :campaign_schedule_placement_id, :company_cost_centre_id, :company_accounting_period_id, :split_percentage, :is_taken, :taken_date_time, :creation_source_id, :eis_sync_date, :additional_company_cost_centre_id, :journals_document_line_id)
    end
end
