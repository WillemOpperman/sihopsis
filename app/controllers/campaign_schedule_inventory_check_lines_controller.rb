class CampaignScheduleInventoryCheckLinesController < ApplicationController
  before_action :set_campaign_schedule_inventory_check_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_inventory_check_lines = CampaignScheduleInventoryCheckLine.all
    respond_with(@campaign_schedule_inventory_check_lines)
  end

  def show
    respond_with(@campaign_schedule_inventory_check_line)
  end

  def new
    @campaign_schedule_inventory_check_line = CampaignScheduleInventoryCheckLine.new
    respond_with(@campaign_schedule_inventory_check_line)
  end

  def edit
  end

  def create
    @campaign_schedule_inventory_check_line = CampaignScheduleInventoryCheckLine.new(campaign_schedule_inventory_check_line_params)
    @campaign_schedule_inventory_check_line.save
    respond_with(@campaign_schedule_inventory_check_line)
  end

  def update
    @campaign_schedule_inventory_check_line.update(campaign_schedule_inventory_check_line_params)
    respond_with(@campaign_schedule_inventory_check_line)
  end

  def destroy
    @campaign_schedule_inventory_check_line.destroy
    respond_with(@campaign_schedule_inventory_check_line)
  end

  private
    def set_campaign_schedule_inventory_check_line
      @campaign_schedule_inventory_check_line = CampaignScheduleInventoryCheckLine.find(params[:id])
    end

    def campaign_schedule_inventory_check_line_params
      params.require(:campaign_schedule_inventory_check_line).permit(:uid, :code, :revision_no, :campaign_schedule_inventory_check_id, :campaign_schedule_placement_id, :gross_amount, :commission_amount, :nett_amount, :commission_percent, :eis_sync_date)
    end
end
