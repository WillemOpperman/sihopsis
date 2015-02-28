class CampaignSchedulePlacementServiceProviderDigitalProofsController < ApplicationController
  before_action :set_campaign_schedule_placement_service_provider_digital_proof, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaign_schedule_placement_service_provider_digital_proofs = CampaignSchedulePlacementServiceProviderDigitalProof.all
    respond_with(@campaign_schedule_placement_service_provider_digital_proofs)
  end

  def show
    respond_with(@campaign_schedule_placement_service_provider_digital_proof)
  end

  def new
    @campaign_schedule_placement_service_provider_digital_proof = CampaignSchedulePlacementServiceProviderDigitalProof.new
    respond_with(@campaign_schedule_placement_service_provider_digital_proof)
  end

  def edit
  end

  def create
    @campaign_schedule_placement_service_provider_digital_proof = CampaignSchedulePlacementServiceProviderDigitalProof.new(campaign_schedule_placement_service_provider_digital_proof_params)
    @campaign_schedule_placement_service_provider_digital_proof.save
    respond_with(@campaign_schedule_placement_service_provider_digital_proof)
  end

  def update
    @campaign_schedule_placement_service_provider_digital_proof.update(campaign_schedule_placement_service_provider_digital_proof_params)
    respond_with(@campaign_schedule_placement_service_provider_digital_proof)
  end

  def destroy
    @campaign_schedule_placement_service_provider_digital_proof.destroy
    respond_with(@campaign_schedule_placement_service_provider_digital_proof)
  end

  private
    def set_campaign_schedule_placement_service_provider_digital_proof
      @campaign_schedule_placement_service_provider_digital_proof = CampaignSchedulePlacementServiceProviderDigitalProof.find(params[:id])
    end

    def campaign_schedule_placement_service_provider_digital_proof_params
      params.require(:campaign_schedule_placement_service_provider_digital_proof).permit(:code, :uid, :campaign_schedule_placement_id, :service_prover_digital_proof_id, :service_provider_size, :service_provider_columns, :service_provider_colour, :service_provider_position, :service_provider_position_no, :service_provider_advert_no, :service_provider_advert_title, :service_provider_advert_language, :media_agency_status, :is_accepted_by_media_agency, :service_provider_modified_date, :status_system_app_user_id, :status_date, :eis_sync_date)
    end
end
