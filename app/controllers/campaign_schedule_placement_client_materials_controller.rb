class CampaignSchedulePlacementClientMaterialsController < ApplicationController
  before_action :set_campaign_schedule_placement_client_material, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_client_materials = CampaignSchedulePlacementClientMaterial.all
    respond_with(@campaign_schedule_placement_client_materials)
  end

  def show
    respond_with(@campaign_schedule_placement_client_material)
  end

  def new
    @campaign_schedule_placement_client_material = CampaignSchedulePlacementClientMaterial.new
    respond_with(@campaign_schedule_placement_client_material)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_client_material = CampaignSchedulePlacementClientMaterial.new(campaign_schedule_placement_client_material_params)
    @campaign_schedule_placement_client_material.save
    respond_with(@campaign_schedule_placement_client_material)
  end

  def update
    @campaign_schedule_placement_client_material.update(campaign_schedule_placement_client_material_params)
    respond_with(@campaign_schedule_placement_client_material)
  end

  def destroy
    @campaign_schedule_placement_client_material.destroy
    respond_with(@campaign_schedule_placement_client_material)
  end

  private
    def set_campaign_schedule_placement_client_material
      @campaign_schedule_placement_client_material = CampaignSchedulePlacementClientMaterial.find(params[:id])
    end

    def campaign_schedule_placement_client_material_params
      params.require(:campaign_schedule_placement_client_material).permit(:uid, :code, :campaign_schedule_placement_id, :client_material_id, :is_primary, :creation_source_id, :eis_sync_date)
    end
end
