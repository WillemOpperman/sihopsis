class CampaignScheduleInventoryChecksController < ApplicationController
  before_action :set_campaign_schedule_inventory_check, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_inventory_checks = CampaignScheduleInventoryCheck.all
    respond_with(@campaign_schedule_inventory_checks)
  end

  def show
    respond_with(@campaign_schedule_inventory_check)
  end

  def new
    @campaign_schedule_inventory_check = CampaignScheduleInventoryCheck.new
    respond_with(@campaign_schedule_inventory_check)
  end

  def edit
  end

  def create
    @campaign_schedule_inventory_check = CampaignScheduleInventoryCheck.new(campaign_schedule_inventory_check_params)
    @campaign_schedule_inventory_check.save
    respond_with(@campaign_schedule_inventory_check)
  end

  def update
    @campaign_schedule_inventory_check.update(campaign_schedule_inventory_check_params)
    respond_with(@campaign_schedule_inventory_check)
  end

  def destroy
    @campaign_schedule_inventory_check.destroy
    respond_with(@campaign_schedule_inventory_check)
  end

  private
    def set_campaign_schedule_inventory_check
      @campaign_schedule_inventory_check = CampaignScheduleInventoryCheck.find(params[:id])
    end

    def campaign_schedule_inventory_check_params
      params.require(:campaign_schedule_inventory_check).permit(:uid, :code, :company_division_id, :campaign_schedule_id, :supplier_id, :media_space_id, :contact_id, :communication_status_id, :creation_source_id, :gross_amount, :commission_amount, :nett_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :description, :eis_sync_date)
    end
end
