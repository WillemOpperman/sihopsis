class ClientProductAliasesController < ApplicationController
  before_action :set_client_product_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_product_aliases = ClientProductAlias.all
    respond_with(@client_product_aliases)
  end

  def show
    respond_with(@client_product_alias)
  end

  def new
    @client_product_alias = ClientProductAlias.new
    respond_with(@client_product_alias)
  end

  def edit
  end

  def create
    @client_product_alias = ClientProductAlias.new(client_product_alias_params)
    @client_product_alias.save
    respond_with(@client_product_alias)
  end

  def update
    @client_product_alias.update(client_product_alias_params)
    respond_with(@client_product_alias)
  end

  def destroy
    @client_product_alias.destroy
    respond_with(@client_product_alias)
  end

  private
    def set_client_product_alias
      @client_product_alias = ClientProductAlias.find(params[:id])
    end

    def client_product_alias_params
      params.require(:client_product_alias).permit(:uid, :code, :client_product_id, :client_id, :name)
    end
end
