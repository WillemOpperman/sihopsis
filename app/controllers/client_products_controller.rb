class ClientProductsController < ApplicationController
  before_action :set_client_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_products = ClientProduct.all
    respond_with(@client_products)
  end

  def show
    respond_with(@client_product)
  end

  def new
    @client_product = ClientProduct.new
    respond_with(@client_product)
  end

  def edit
  end

  def create
    @client_product = ClientProduct.new(client_product_params)
    @client_product.save
    respond_with(@client_product)
  end

  def update
    @client_product.update(client_product_params)
    respond_with(@client_product)
  end

  def destroy
    @client_product.destroy
    respond_with(@client_product)
  end

  private
    def set_client_product
      @client_product = ClientProduct.find(params[:id])
    end

    def client_product_params
      params.require(:client_product).permit(:code, :code_external, :uid, :name, :client_id, :default_contact_id, :creation_source_id, :default_agency_commission_percentage, :tax_registration_no, :region, :is_active, :eis_sync_date)
    end
end
