class CampaignSchedulePlacementProposedChangesController < ApplicationController
  before_action :set_campaign_schedule_placement_proposed_change, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_proposed_changes = CampaignSchedulePlacementProposedChange.all
    respond_with(@campaign_schedule_placement_proposed_changes)
  end

  def show
    respond_with(@campaign_schedule_placement_proposed_change)
  end

  def new
    @campaign_schedule_placement_proposed_change = CampaignSchedulePlacementProposedChange.new
    respond_with(@campaign_schedule_placement_proposed_change)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_proposed_change = CampaignSchedulePlacementProposedChange.new(campaign_schedule_placement_proposed_change_params)
    @campaign_schedule_placement_proposed_change.save
    respond_with(@campaign_schedule_placement_proposed_change)
  end

  def update
    @campaign_schedule_placement_proposed_change.update(campaign_schedule_placement_proposed_change_params)
    respond_with(@campaign_schedule_placement_proposed_change)
  end

  def destroy
    @campaign_schedule_placement_proposed_change.destroy
    respond_with(@campaign_schedule_placement_proposed_change)
  end

  private
    def set_campaign_schedule_placement_proposed_change
      @campaign_schedule_placement_proposed_change = CampaignSchedulePlacementProposedChange.find(params[:id])
    end

    def campaign_schedule_placement_proposed_change_params
      params.require(:campaign_schedule_placement_proposed_change).permit(:uid, :code, :original_campaign_schedule_placement_id, :proposed_campaign_schedule_placement_id, :proposed_user_id, :approval_user_id, :is_cancellation_request, :is_approved, :is_rejected, :status_reason, :status_date, :change_reason, :is_closed, :client_financial_document_line_id)
    end
end
