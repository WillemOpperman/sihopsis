class RoutingAddressSourceTypesController < ApplicationController
  before_action :set_routing_address_source_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @routing_address_source_types = RoutingAddressSourceType.all
    respond_with(@routing_address_source_types)
  end

  def show
    respond_with(@routing_address_source_type)
  end

  def new
    @routing_address_source_type = RoutingAddressSourceType.new
    respond_with(@routing_address_source_type)
  end

  def edit
  end

  def create
    @routing_address_source_type = RoutingAddressSourceType.new(routing_address_source_type_params)
    @routing_address_source_type.save
    respond_with(@routing_address_source_type)
  end

  def update
    @routing_address_source_type.update(routing_address_source_type_params)
    respond_with(@routing_address_source_type)
  end

  def destroy
    @routing_address_source_type.destroy
    respond_with(@routing_address_source_type)
  end

  private
    def set_routing_address_source_type
      @routing_address_source_type = RoutingAddressSourceType.find(params[:id])
    end

    def routing_address_source_type_params
      params.require(:routing_address_source_type).permit(:uid, :code, :name, :company_id, :is_branded, :eis_sync_date)
    end
end
