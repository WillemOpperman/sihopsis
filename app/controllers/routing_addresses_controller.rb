class RoutingAddressesController < ApplicationController
  before_action :set_routing_address, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @routing_addresses = RoutingAddress.all
    respond_with(@routing_addresses)
  end

  def show
    respond_with(@routing_address)
  end

  def new
    @routing_address = RoutingAddress.new
    respond_with(@routing_address)
  end

  def edit
  end

  def create
    @routing_address = RoutingAddress.new(routing_address_params)
    @routing_address.save
    respond_with(@routing_address)
  end

  def update
    @routing_address.update(routing_address_params)
    respond_with(@routing_address)
  end

  def destroy
    @routing_address.destroy
    respond_with(@routing_address)
  end

  private
    def set_routing_address
      @routing_address = RoutingAddress.find(params[:id])
    end

    def routing_address_params
      params.require(:routing_address).permit(:uid, :code, :name, :company_id, :eis_sync_date, :is_active)
    end
end
