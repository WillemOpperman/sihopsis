class CampaignSchedulePlacementFeeLinesController < ApplicationController
  before_action :set_campaign_schedule_placement_fee_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_fee_lines = CampaignSchedulePlacementFeeLine.all
    respond_with(@campaign_schedule_placement_fee_lines)
  end

  def show
    respond_with(@campaign_schedule_placement_fee_line)
  end

  def new
    @campaign_schedule_placement_fee_line = CampaignSchedulePlacementFeeLine.new
    respond_with(@campaign_schedule_placement_fee_line)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_fee_line = CampaignSchedulePlacementFeeLine.new(campaign_schedule_placement_fee_line_params)
    @campaign_schedule_placement_fee_line.save
    respond_with(@campaign_schedule_placement_fee_line)
  end

  def update
    @campaign_schedule_placement_fee_line.update(campaign_schedule_placement_fee_line_params)
    respond_with(@campaign_schedule_placement_fee_line)
  end

  def destroy
    @campaign_schedule_placement_fee_line.destroy
    respond_with(@campaign_schedule_placement_fee_line)
  end

  private
    def set_campaign_schedule_placement_fee_line
      @campaign_schedule_placement_fee_line = CampaignSchedulePlacementFeeLine.find(params[:id])
    end

    def campaign_schedule_placement_fee_line_params
      params.require(:campaign_schedule_placement_fee_line).permit(:uid, :code, :campaign_schedule_placement_id, :media_fee_type_id, :fee_percent, :fee_amount, :fee_home_amount, :eis_sync_date)
    end
end
