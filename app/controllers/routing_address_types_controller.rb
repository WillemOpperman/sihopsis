class RoutingAddressTypesController < ApplicationController
  before_action :set_routing_address_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @routing_address_types = RoutingAddressType.all
    respond_with(@routing_address_types)
  end

  def show
    respond_with(@routing_address_type)
  end

  def new
    @routing_address_type = RoutingAddressType.new
    respond_with(@routing_address_type)
  end

  def edit
  end

  def create
    @routing_address_type = RoutingAddressType.new(routing_address_type_params)
    @routing_address_type.save
    respond_with(@routing_address_type)
  end

  def update
    @routing_address_type.update(routing_address_type_params)
    respond_with(@routing_address_type)
  end

  def destroy
    @routing_address_type.destroy
    respond_with(@routing_address_type)
  end

  private
    def set_routing_address_type
      @routing_address_type = RoutingAddressType.find(params[:id])
    end

    def routing_address_type_params
      params.require(:routing_address_type).permit(:uid, :code, :name, :company_id, :default_routing_address_source_type_id, :eis_sync_date)
    end
end
