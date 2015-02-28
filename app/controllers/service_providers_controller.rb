class ServiceProvidersController < ApplicationController
  before_action :set_service_provider, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_providers = ServiceProvider.all
    respond_with(@service_providers)
  end

  def show
    respond_with(@service_provider)
  end

  def new
    @service_provider = ServiceProvider.new
    respond_with(@service_provider)
  end

  def edit
  end

  def create
    @service_provider = ServiceProvider.new(service_provider_params)
    @service_provider.save
    respond_with(@service_provider)
  end

  def update
    @service_provider.update(service_provider_params)
    respond_with(@service_provider)
  end

  def destroy
    @service_provider.destroy
    respond_with(@service_provider)
  end

  private
    def set_service_provider
      @service_provider = ServiceProvider.find(params[:id])
    end

    def service_provider_params
      params.require(:service_provider).permit(:code, :uid, :name, :is_this_agency, :default_proof_file_extention, :is_active, :modified_date, :eis_sync_date)
    end
end
