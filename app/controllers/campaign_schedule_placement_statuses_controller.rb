class CampaignSchedulePlacementStatusesController < ApplicationController
  before_action :set_campaign_schedule_placement_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_statuses = CampaignSchedulePlacementStatus.all
    respond_with(@campaign_schedule_placement_statuses)
  end

  def show
    respond_with(@campaign_schedule_placement_status)
  end

  def new
    @campaign_schedule_placement_status = CampaignSchedulePlacementStatus.new
    respond_with(@campaign_schedule_placement_status)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_status = CampaignSchedulePlacementStatus.new(campaign_schedule_placement_status_params)
    @campaign_schedule_placement_status.save
    respond_with(@campaign_schedule_placement_status)
  end

  def update
    @campaign_schedule_placement_status.update(campaign_schedule_placement_status_params)
    respond_with(@campaign_schedule_placement_status)
  end

  def destroy
    @campaign_schedule_placement_status.destroy
    respond_with(@campaign_schedule_placement_status)
  end

  private
    def set_campaign_schedule_placement_status
      @campaign_schedule_placement_status = CampaignSchedulePlacementStatus.find(params[:id])
    end

    def campaign_schedule_placement_status_params
      params.require(:campaign_schedule_placement_status).permit(:uid, :code, :name, :is_placement_active, :is_placement_proposed, :is_placement_client_ordered, :is_placement_client_approved, :is_placement_requested, :is_placement_ordered, :is_placement_rescheduled, :is_placement_live, :is_placement_paused, :is_placement_suspended, :is_placement_restarted, :is_placement_stopped, :is_placement_finished, :is_placement_instructed, :is_placement_part_of_credit_exposure, :is_placement_part_of_p_o_exposure, :is_placement_rejected, :is_placement_taken_to_super_profit, :is_placement_temporary, :is_reason_required_to_change_to, :is_attachment_required_to_change_to, :is_default, :eis_sync_date, :is_active, :media_category_id, :is_placement_disputed, :is_placement_reviewed, :is_placement_awaiting_client_material, :company_division_id, :is_placement_billable)
    end
end
