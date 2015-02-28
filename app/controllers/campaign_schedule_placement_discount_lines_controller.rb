class CampaignSchedulePlacementDiscountLinesController < ApplicationController
  before_action :set_campaign_schedule_placement_discount_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_discount_lines = CampaignSchedulePlacementDiscountLine.all
    respond_with(@campaign_schedule_placement_discount_lines)
  end

  def show
    respond_with(@campaign_schedule_placement_discount_line)
  end

  def new
    @campaign_schedule_placement_discount_line = CampaignSchedulePlacementDiscountLine.new
    respond_with(@campaign_schedule_placement_discount_line)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_discount_line = CampaignSchedulePlacementDiscountLine.new(campaign_schedule_placement_discount_line_params)
    @campaign_schedule_placement_discount_line.save
    respond_with(@campaign_schedule_placement_discount_line)
  end

  def update
    @campaign_schedule_placement_discount_line.update(campaign_schedule_placement_discount_line_params)
    respond_with(@campaign_schedule_placement_discount_line)
  end

  def destroy
    @campaign_schedule_placement_discount_line.destroy
    respond_with(@campaign_schedule_placement_discount_line)
  end

  private
    def set_campaign_schedule_placement_discount_line
      @campaign_schedule_placement_discount_line = CampaignSchedulePlacementDiscountLine.find(params[:id])
    end

    def campaign_schedule_placement_discount_line_params
      params.require(:campaign_schedule_placement_discount_line).permit(:uid, :code, :campaign_schedule_placement_id, :media_discount_surcharge_type_id, :media_discount_surcharge_type_client_deal_id, :discount_percent, :discount_amount, :discount_to_client_percent, :discount_to_client_amount, :is_default, :eis_sync_date, :apply_after_id)
    end
end
