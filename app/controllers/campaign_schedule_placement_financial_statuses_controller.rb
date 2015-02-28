class CampaignSchedulePlacementFinancialStatusesController < ApplicationController
  before_action :set_campaign_schedule_placement_financial_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_financial_statuses = CampaignSchedulePlacementFinancialStatus.all
    respond_with(@campaign_schedule_placement_financial_statuses)
  end

  def show
    respond_with(@campaign_schedule_placement_financial_status)
  end

  def new
    @campaign_schedule_placement_financial_status = CampaignSchedulePlacementFinancialStatus.new
    respond_with(@campaign_schedule_placement_financial_status)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_financial_status = CampaignSchedulePlacementFinancialStatus.new(campaign_schedule_placement_financial_status_params)
    @campaign_schedule_placement_financial_status.save
    respond_with(@campaign_schedule_placement_financial_status)
  end

  def update
    @campaign_schedule_placement_financial_status.update(campaign_schedule_placement_financial_status_params)
    respond_with(@campaign_schedule_placement_financial_status)
  end

  def destroy
    @campaign_schedule_placement_financial_status.destroy
    respond_with(@campaign_schedule_placement_financial_status)
  end

  private
    def set_campaign_schedule_placement_financial_status
      @campaign_schedule_placement_financial_status = CampaignSchedulePlacementFinancialStatus.find(params[:id])
    end

    def campaign_schedule_placement_financial_status_params
      params.require(:campaign_schedule_placement_financial_status).permit(:uid, :code, :name, :is_placement_active, :is_placement_billed, :is_placement_amended, :is_placement_transitioning, :is_reason_required_to_change_to, :eis_sync_date)
    end
end
