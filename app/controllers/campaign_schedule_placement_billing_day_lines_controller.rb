class CampaignSchedulePlacementBillingDayLinesController < ApplicationController
  before_action :set_campaign_schedule_placement_billing_day_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_billing_day_lines = CampaignSchedulePlacementBillingDayLine.all
    respond_with(@campaign_schedule_placement_billing_day_lines)
  end

  def show
    respond_with(@campaign_schedule_placement_billing_day_line)
  end

  def new
    @campaign_schedule_placement_billing_day_line = CampaignSchedulePlacementBillingDayLine.new
    respond_with(@campaign_schedule_placement_billing_day_line)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_billing_day_line = CampaignSchedulePlacementBillingDayLine.new(campaign_schedule_placement_billing_day_line_params)
    @campaign_schedule_placement_billing_day_line.save
    respond_with(@campaign_schedule_placement_billing_day_line)
  end

  def update
    @campaign_schedule_placement_billing_day_line.update(campaign_schedule_placement_billing_day_line_params)
    respond_with(@campaign_schedule_placement_billing_day_line)
  end

  def destroy
    @campaign_schedule_placement_billing_day_line.destroy
    respond_with(@campaign_schedule_placement_billing_day_line)
  end

  private
    def set_campaign_schedule_placement_billing_day_line
      @campaign_schedule_placement_billing_day_line = CampaignSchedulePlacementBillingDayLine.find(params[:id])
    end

    def campaign_schedule_placement_billing_day_line_params
      params.require(:campaign_schedule_placement_billing_day_line).permit(:uid, :code, :campaign_schedule_placement_id, :percent_of_total, :quantity, :gross_amount, :commission_amount, :fees_amount, :nett_amount, :is_billed, :is_credited, :notes, :eis_sync_date, :client_financial_document_line_id, :billing_day_start_date, :billing_day_end_date, :creation_source_id, :gross_home_amount, :commission_home_amount, :fees_home_amount, :nett_home_amount, :parent_id)
    end
end
