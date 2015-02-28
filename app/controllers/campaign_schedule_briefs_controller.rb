class CampaignScheduleBriefsController < ApplicationController
  before_action :set_campaign_schedule_brief, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_briefs = CampaignScheduleBrief.all
    respond_with(@campaign_schedule_briefs)
  end

  def show
    respond_with(@campaign_schedule_brief)
  end

  def new
    @campaign_schedule_brief = CampaignScheduleBrief.new
    respond_with(@campaign_schedule_brief)
  end

  def edit
  end

  def create
    @campaign_schedule_brief = CampaignScheduleBrief.new(campaign_schedule_brief_params)
    @campaign_schedule_brief.save
    respond_with(@campaign_schedule_brief)
  end

  def update
    @campaign_schedule_brief.update(campaign_schedule_brief_params)
    respond_with(@campaign_schedule_brief)
  end

  def destroy
    @campaign_schedule_brief.destroy
    respond_with(@campaign_schedule_brief)
  end

  private
    def set_campaign_schedule_brief
      @campaign_schedule_brief = CampaignScheduleBrief.find(params[:id])
    end

    def campaign_schedule_brief_params
      params.require(:campaign_schedule_brief).permit(:uid, :code, :company_division_id, :campaign_schedule_id, :contact_id, :communication_status_id, :creation_source_id, :description, :eis_sync_date)
    end
end
