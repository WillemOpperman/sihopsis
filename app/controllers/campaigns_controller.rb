class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaigns = Campaign.all
    respond_with(@campaigns)
  end

  def show
    respond_with(@campaign)
  end

  def new
    @campaign = Campaign.new
    respond_with(@campaign)
  end

  def edit
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.save
    respond_with(@campaign)
  end

  def update
    @campaign.update(campaign_params)
    respond_with(@campaign)
  end

  def destroy
    @campaign.destroy
    respond_with(@campaign)
  end

  private
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def campaign_params
      params.require(:campaign).permit(:uid, :code, :code_external, :name, :additional_name, :company_division_id, :status_id, :client_id, :default_client_product_id, :default_client_product_sub_id, :default_creative_agency_id, :default_media_agency_client_id, :default_natural_client_id, :default_natural_client_product_id, :owner_user_id, :manager_user_id, :default_client_contact_id, :default_creative_agency_contact_id, :default_media_agency_client_contact_id, :default_natural_client_contact_id, :client_purchase_order_id, :creation_source_id, :start_date, :finish_date, :eis_sync_date)
    end
end
