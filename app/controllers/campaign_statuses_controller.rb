class CampaignStatusesController < ApplicationController
  before_action :set_campaign_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_statuses = CampaignStatus.all
    respond_with(@campaign_statuses)
  end

  def show
    respond_with(@campaign_status)
  end

  def new
    @campaign_status = CampaignStatus.new
    respond_with(@campaign_status)
  end

  def edit
  end

  def create
    @campaign_status = CampaignStatus.new(campaign_status_params)
    @campaign_status.save
    respond_with(@campaign_status)
  end

  def update
    @campaign_status.update(campaign_status_params)
    respond_with(@campaign_status)
  end

  def destroy
    @campaign_status.destroy
    respond_with(@campaign_status)
  end

  private
    def set_campaign_status
      @campaign_status = CampaignStatus.find(params[:id])
    end

    def campaign_status_params
      params.require(:campaign_status).permit(:uid, :code, :name, :is_open, :is_closed, :is_cancelled, :is_default, :eis_sync_date)
    end
end
