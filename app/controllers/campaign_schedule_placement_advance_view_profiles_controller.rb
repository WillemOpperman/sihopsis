class CampaignSchedulePlacementAdvanceViewProfilesController < ApplicationController
  before_action :set_campaign_schedule_placement_advance_view_profile, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_advance_view_profiles = CampaignSchedulePlacementAdvanceViewProfile.all
    respond_with(@campaign_schedule_placement_advance_view_profiles)
  end

  def show
    respond_with(@campaign_schedule_placement_advance_view_profile)
  end

  def new
    @campaign_schedule_placement_advance_view_profile = CampaignSchedulePlacementAdvanceViewProfile.new
    respond_with(@campaign_schedule_placement_advance_view_profile)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_advance_view_profile = CampaignSchedulePlacementAdvanceViewProfile.new(campaign_schedule_placement_advance_view_profile_params)
    @campaign_schedule_placement_advance_view_profile.save
    respond_with(@campaign_schedule_placement_advance_view_profile)
  end

  def update
    @campaign_schedule_placement_advance_view_profile.update(campaign_schedule_placement_advance_view_profile_params)
    respond_with(@campaign_schedule_placement_advance_view_profile)
  end

  def destroy
    @campaign_schedule_placement_advance_view_profile.destroy
    respond_with(@campaign_schedule_placement_advance_view_profile)
  end

  private
    def set_campaign_schedule_placement_advance_view_profile
      @campaign_schedule_placement_advance_view_profile = CampaignSchedulePlacementAdvanceViewProfile.find(params[:id])
    end

    def campaign_schedule_placement_advance_view_profile_params
      params.require(:campaign_schedule_placement_advance_view_profile).permit(:uid, :code, :custom_layout_name, :custom_layout_x_m_l)
    end
end
