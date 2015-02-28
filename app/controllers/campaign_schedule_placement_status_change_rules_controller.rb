class CampaignSchedulePlacementStatusChangeRulesController < ApplicationController
  before_action :set_campaign_schedule_placement_status_change_rule, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_status_change_rules = CampaignSchedulePlacementStatusChangeRule.all
    respond_with(@campaign_schedule_placement_status_change_rules)
  end

  def show
    respond_with(@campaign_schedule_placement_status_change_rule)
  end

  def new
    @campaign_schedule_placement_status_change_rule = CampaignSchedulePlacementStatusChangeRule.new
    respond_with(@campaign_schedule_placement_status_change_rule)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_status_change_rule = CampaignSchedulePlacementStatusChangeRule.new(campaign_schedule_placement_status_change_rule_params)
    @campaign_schedule_placement_status_change_rule.save
    respond_with(@campaign_schedule_placement_status_change_rule)
  end

  def update
    @campaign_schedule_placement_status_change_rule.update(campaign_schedule_placement_status_change_rule_params)
    respond_with(@campaign_schedule_placement_status_change_rule)
  end

  def destroy
    @campaign_schedule_placement_status_change_rule.destroy
    respond_with(@campaign_schedule_placement_status_change_rule)
  end

  private
    def set_campaign_schedule_placement_status_change_rule
      @campaign_schedule_placement_status_change_rule = CampaignSchedulePlacementStatusChangeRule.find(params[:id])
    end

    def campaign_schedule_placement_status_change_rule_params
      params.require(:campaign_schedule_placement_status_change_rule).permit(:uid, :code, :name, :change_from_campaign_schedule_placement_status_id, :change_to_campaign_schedule_placement_status_id, :is_allowed, :is_allowed_in_change_wizard, :eis_sync_date)
    end
end
