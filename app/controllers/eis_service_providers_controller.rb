class EisServiceProvidersController < ApplicationController
  before_action :set_eis_service_provider, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @eis_service_providers = EisServiceProvider.all
    respond_with(@eis_service_providers)
  end

  def show
    respond_with(@eis_service_provider)
  end

  def new
    @eis_service_provider = EisServiceProvider.new
    respond_with(@eis_service_provider)
  end

  def edit
  end

  def create
    @eis_service_provider = EisServiceProvider.new(eis_service_provider_params)
    @eis_service_provider.save
    respond_with(@eis_service_provider)
  end

  def update
    @eis_service_provider.update(eis_service_provider_params)
    respond_with(@eis_service_provider)
  end

  def destroy
    @eis_service_provider.destroy
    respond_with(@eis_service_provider)
  end

  private
    def set_eis_service_provider
      @eis_service_provider = EisServiceProvider.find(params[:id])
    end

    def eis_service_provider_params
      params.require(:eis_service_provider).permit(:uid, :code, :code_external, :name, :is_this_agency, :service_provider_modified_date, :eis_sync_date)
    end
end
