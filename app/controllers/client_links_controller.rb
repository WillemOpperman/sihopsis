class ClientLinksController < ApplicationController
  before_action :set_client_link, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_links = ClientLink.all
    respond_with(@client_links)
  end

  def show
    respond_with(@client_link)
  end

  def new
    @client_link = ClientLink.new
    respond_with(@client_link)
  end

  def edit
  end

  def create
    @client_link = ClientLink.new(client_link_params)
    @client_link.save
    respond_with(@client_link)
  end

  def update
    @client_link.update(client_link_params)
    respond_with(@client_link)
  end

  def destroy
    @client_link.destroy
    respond_with(@client_link)
  end

  private
    def set_client_link
      @client_link = ClientLink.find(params[:id])
    end

    def client_link_params
      params.require(:client_link).permit(:uid, :code, :name, :is_to_advertiser, :is_to_media_agency, :is_to_natural_client, :is_default)
    end
end
