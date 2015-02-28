class ServiceProviderDigitalProofsController < ApplicationController
  before_action :set_service_provider_digital_proof, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_provider_digital_proofs = ServiceProviderDigitalProof.all
    respond_with(@service_provider_digital_proofs)
  end

  def show
    respond_with(@service_provider_digital_proof)
  end

  def new
    @service_provider_digital_proof = ServiceProviderDigitalProof.new
    respond_with(@service_provider_digital_proof)
  end

  def edit
  end

  def create
    @service_provider_digital_proof = ServiceProviderDigitalProof.new(service_provider_digital_proof_params)
    @service_provider_digital_proof.save
    respond_with(@service_provider_digital_proof)
  end

  def update
    @service_provider_digital_proof.update(service_provider_digital_proof_params)
    respond_with(@service_provider_digital_proof)
  end

  def destroy
    @service_provider_digital_proof.destroy
    respond_with(@service_provider_digital_proof)
  end

  private
    def set_service_provider_digital_proof
      @service_provider_digital_proof = ServiceProviderDigitalProof.find(params[:id])
    end

    def service_provider_digital_proof_params
      params.require(:service_provider_digital_proof).permit(:code, :uid, :service_prover_id, :url, :source_name, :source_location, :source_location2, :local_server_file_name, :appearance_date, :service_provider_modified_date, :eis_sync_date)
    end
end
