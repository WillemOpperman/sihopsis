class ClientContractLinesController < ApplicationController
  before_action :set_client_contract_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_contract_lines = ClientContractLine.all
    respond_with(@client_contract_lines)
  end

  def show
    respond_with(@client_contract_line)
  end

  def new
    @client_contract_line = ClientContractLine.new
    respond_with(@client_contract_line)
  end

  def edit
  end

  def create
    @client_contract_line = ClientContractLine.new(client_contract_line_params)
    @client_contract_line.save
    respond_with(@client_contract_line)
  end

  def update
    @client_contract_line.update(client_contract_line_params)
    respond_with(@client_contract_line)
  end

  def destroy
    @client_contract_line.destroy
    respond_with(@client_contract_line)
  end

  private
    def set_client_contract_line
      @client_contract_line = ClientContractLine.find(params[:id])
    end

    def client_contract_line_params
      params.require(:client_contract_line).permit(:uid, :code, :client_contract_id, :campaign_schedule_placement_id, :gross_amount, :commission_amount, :nett_amount, :revision_no, :notes, :eis_sync_date, :is_active, :is_changed_in_current_revision, :revision_change_details, :change_reason)
    end
end
