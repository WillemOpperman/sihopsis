class ClientContractsController < ApplicationController
  before_action :set_client_contract, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_contracts = ClientContract.all
    respond_with(@client_contracts)
  end

  def show
    respond_with(@client_contract)
  end

  def new
    @client_contract = ClientContract.new
    respond_with(@client_contract)
  end

  def edit
  end

  def create
    @client_contract = ClientContract.new(client_contract_params)
    @client_contract.save
    respond_with(@client_contract)
  end

  def update
    @client_contract.update(client_contract_params)
    respond_with(@client_contract)
  end

  def destroy
    @client_contract.destroy
    respond_with(@client_contract)
  end

  private
    def set_client_contract
      @client_contract = ClientContract.find(params[:id])
    end

    def client_contract_params
      params.require(:client_contract).permit(:uid, :code, :code_external, :company_id, :company_division_id, :client_id, :client_product_id, :campaign_id, :campaign_schedule_id, :client_contact_id, :owner_user_id, :currency_id, :creation_source_id, :status_id, :communication_status_id, :actual_date, :gross_amount, :commission_amount, :nett_amount, :tax_type_id, :tax_gross_amount, :tax_nett_amount, :exchange_rate, :notes, :status_reason, :grid_layout_x_m_l, :eis_sync_date, :revision_no)
    end
end
