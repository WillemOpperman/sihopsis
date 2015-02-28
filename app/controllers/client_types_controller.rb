class ClientTypesController < ApplicationController
  before_action :set_client_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_types = ClientType.all
    respond_with(@client_types)
  end

  def show
    respond_with(@client_type)
  end

  def new
    @client_type = ClientType.new
    respond_with(@client_type)
  end

  def edit
  end

  def create
    @client_type = ClientType.new(client_type_params)
    @client_type.save
    respond_with(@client_type)
  end

  def update
    @client_type.update(client_type_params)
    respond_with(@client_type)
  end

  def destroy
    @client_type.destroy
    respond_with(@client_type)
  end

  private
    def set_client_type
      @client_type = ClientType.find(params[:id])
    end

    def client_type_params
      params.require(:client_type).permit(:uid, :code, :name, :is_financial, :is_client, :is_natural_client, :is_media_agency, :eis_sync_date)
    end
end
