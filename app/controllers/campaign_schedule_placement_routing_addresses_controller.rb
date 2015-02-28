class CampaignSchedulePlacementRoutingAddressesController < ApplicationController
  before_action :set_campaign_schedule_placement_routing_address, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_routing_addresses = CampaignSchedulePlacementRoutingAddress.all
    respond_with(@campaign_schedule_placement_routing_addresses)
  end

  def show
    respond_with(@campaign_schedule_placement_routing_address)
  end

  def new
    @campaign_schedule_placement_routing_address = CampaignSchedulePlacementRoutingAddress.new
    respond_with(@campaign_schedule_placement_routing_address)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_routing_address = CampaignSchedulePlacementRoutingAddress.new(campaign_schedule_placement_routing_address_params)
    @campaign_schedule_placement_routing_address.save
    respond_with(@campaign_schedule_placement_routing_address)
  end

  def update
    @campaign_schedule_placement_routing_address.update(campaign_schedule_placement_routing_address_params)
    respond_with(@campaign_schedule_placement_routing_address)
  end

  def destroy
    @campaign_schedule_placement_routing_address.destroy
    respond_with(@campaign_schedule_placement_routing_address)
  end

  private
    def set_campaign_schedule_placement_routing_address
      @campaign_schedule_placement_routing_address = CampaignSchedulePlacementRoutingAddress.find(params[:id])
    end

    def campaign_schedule_placement_routing_address_params
      params.require(:campaign_schedule_placement_routing_address).permit(:uid, :code, :name, :campaign_schedule_placement_id, :routing_address_source_type_id, :routing_address_type_id, :routing_address_id, :notes, :eis_sync_date)
    end
end
