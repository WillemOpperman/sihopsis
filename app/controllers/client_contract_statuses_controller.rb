class ClientContractStatusesController < ApplicationController
  before_action :set_client_contract_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_contract_statuses = ClientContractStatus.all
    respond_with(@client_contract_statuses)
  end

  def show
    respond_with(@client_contract_status)
  end

  def new
    @client_contract_status = ClientContractStatus.new
    respond_with(@client_contract_status)
  end

  def edit
  end

  def create
    @client_contract_status = ClientContractStatus.new(client_contract_status_params)
    @client_contract_status.save
    respond_with(@client_contract_status)
  end

  def update
    @client_contract_status.update(client_contract_status_params)
    respond_with(@client_contract_status)
  end

  def destroy
    @client_contract_status.destroy
    respond_with(@client_contract_status)
  end

  private
    def set_client_contract_status
      @client_contract_status = ClientContractStatus.find(params[:id])
    end

    def client_contract_status_params
      params.require(:client_contract_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_approved, :is_default, :eis_sync_date, :is_status_active)
    end
end
