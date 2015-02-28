class CampaignSchedulesController < ApplicationController
  before_action :set_campaign_schedule, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedules = CampaignSchedule.all
    respond_with(@campaign_schedules)
  end

  def show
    respond_with(@campaign_schedule)
  end

  def new
    @campaign_schedule = CampaignSchedule.new
    respond_with(@campaign_schedule)
  end

  def edit
  end

  def create
    @campaign_schedule = CampaignSchedule.new(campaign_schedule_params)
    @campaign_schedule.save
    respond_with(@campaign_schedule)
  end

  def update
    @campaign_schedule.update(campaign_schedule_params)
    respond_with(@campaign_schedule)
  end

  def destroy
    @campaign_schedule.destroy
    respond_with(@campaign_schedule)
  end

  private
    def set_campaign_schedule
      @campaign_schedule = CampaignSchedule.find(params[:id])
    end

    def campaign_schedule_params
      params.require(:campaign_schedule).permit(:uid, :code, :code_external, :name, :company_division_id, :campaign_id, :default_client_product_id, :default_client_product_sub_id, :owner_system_app_user_id, :manager_system_app_user_id, :default_client_contact_id, :default_creative_agency_id, :default_creative_agency_contact_id, :default_media_agency_client_id, :default_media_agency_client_contact_id, :default_natural_client_id, :default_natural_client_product_id, :default_natural_client_contact_id, :client_purchase_order_id, :media_category_id, :media_region_id, :comments, :gross_budget, :start_date, :finish_date, :creation_source_id, :eis_sync_date)
    end
end
