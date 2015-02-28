class ClientProductSubsController < ApplicationController
  before_action :set_client_product_sub, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_product_subs = ClientProductSub.all
    respond_with(@client_product_subs)
  end

  def show
    respond_with(@client_product_sub)
  end

  def new
    @client_product_sub = ClientProductSub.new
    respond_with(@client_product_sub)
  end

  def edit
  end

  def create
    @client_product_sub = ClientProductSub.new(client_product_sub_params)
    @client_product_sub.save
    respond_with(@client_product_sub)
  end

  def update
    @client_product_sub.update(client_product_sub_params)
    respond_with(@client_product_sub)
  end

  def destroy
    @client_product_sub.destroy
    respond_with(@client_product_sub)
  end

  private
    def set_client_product_sub
      @client_product_sub = ClientProductSub.find(params[:id])
    end

    def client_product_sub_params
      params.require(:client_product_sub).permit(:code, :code_external, :uid, :name, :client_product_id, :default_contact_id, :creation_source_id, :default_agency_commission_percentage, :tax_registration_no, :region, :is_active, :eis_sync_date)
    end
end
