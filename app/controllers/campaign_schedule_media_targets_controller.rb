class CampaignScheduleMediaTargetsController < ApplicationController
  before_action :set_campaign_schedule_media_target, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_media_targets = CampaignScheduleMediaTarget.all
    respond_with(@campaign_schedule_media_targets)
  end

  def show
    respond_with(@campaign_schedule_media_target)
  end

  def new
    @campaign_schedule_media_target = CampaignScheduleMediaTarget.new
    respond_with(@campaign_schedule_media_target)
  end

  def edit
  end

  def create
    @campaign_schedule_media_target = CampaignScheduleMediaTarget.new(campaign_schedule_media_target_params)
    @campaign_schedule_media_target.save
    respond_with(@campaign_schedule_media_target)
  end

  def update
    @campaign_schedule_media_target.update(campaign_schedule_media_target_params)
    respond_with(@campaign_schedule_media_target)
  end

  def destroy
    @campaign_schedule_media_target.destroy
    respond_with(@campaign_schedule_media_target)
  end

  private
    def set_campaign_schedule_media_target
      @campaign_schedule_media_target = CampaignScheduleMediaTarget.find(params[:id])
    end

    def campaign_schedule_media_target_params
      params.require(:campaign_schedule_media_target).permit(:uid, :code, :campaign_schedule_id, :media_target_id, :is_active, :creation_source_id, :eis_sync_date)
    end
end
