class CampaignScheduleBriefLinesController < ApplicationController
  before_action :set_campaign_schedule_brief_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_brief_lines = CampaignScheduleBriefLine.all
    respond_with(@campaign_schedule_brief_lines)
  end

  def show
    respond_with(@campaign_schedule_brief_line)
  end

  def new
    @campaign_schedule_brief_line = CampaignScheduleBriefLine.new
    respond_with(@campaign_schedule_brief_line)
  end

  def edit
  end

  def create
    @campaign_schedule_brief_line = CampaignScheduleBriefLine.new(campaign_schedule_brief_line_params)
    @campaign_schedule_brief_line.save
    respond_with(@campaign_schedule_brief_line)
  end

  def update
    @campaign_schedule_brief_line.update(campaign_schedule_brief_line_params)
    respond_with(@campaign_schedule_brief_line)
  end

  def destroy
    @campaign_schedule_brief_line.destroy
    respond_with(@campaign_schedule_brief_line)
  end

  private
    def set_campaign_schedule_brief_line
      @campaign_schedule_brief_line = CampaignScheduleBriefLine.find(params[:id])
    end

    def campaign_schedule_brief_line_params
      params.require(:campaign_schedule_brief_line).permit(:uid, :code, :revision_no, :campaign_schedule_brief_id, :campaign_schedule_placement_id, :eis_sync_date)
    end
end
