class ClientAliasesController < ApplicationController
  before_action :set_client_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_aliases = ClientAlias.all
    respond_with(@client_aliases)
  end

  def show
    respond_with(@client_alias)
  end

  def new
    @client_alias = ClientAlias.new
    respond_with(@client_alias)
  end

  def edit
  end

  def create
    @client_alias = ClientAlias.new(client_alias_params)
    @client_alias.save
    respond_with(@client_alias)
  end

  def update
    @client_alias.update(client_alias_params)
    respond_with(@client_alias)
  end

  def destroy
    @client_alias.destroy
    respond_with(@client_alias)
  end

  private
    def set_client_alias
      @client_alias = ClientAlias.find(params[:id])
    end

    def client_alias_params
      params.require(:client_alias).permit(:uid, :code, :client_id, :name)
    end
end
