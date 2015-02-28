class ClientCompanyCostCentresController < ApplicationController
  before_action :set_client_company_cost_centre, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_company_cost_centres = ClientCompanyCostCentre.all
    respond_with(@client_company_cost_centres)
  end

  def show
    respond_with(@client_company_cost_centre)
  end

  def new
    @client_company_cost_centre = ClientCompanyCostCentre.new
    respond_with(@client_company_cost_centre)
  end

  def edit
  end

  def create
    @client_company_cost_centre = ClientCompanyCostCentre.new(client_company_cost_centre_params)
    @client_company_cost_centre.save
    respond_with(@client_company_cost_centre)
  end

  def update
    @client_company_cost_centre.update(client_company_cost_centre_params)
    respond_with(@client_company_cost_centre)
  end

  def destroy
    @client_company_cost_centre.destroy
    respond_with(@client_company_cost_centre)
  end

  private
    def set_client_company_cost_centre
      @client_company_cost_centre = ClientCompanyCostCentre.find(params[:id])
    end

    def client_company_cost_centre_params
      params.require(:client_company_cost_centre).permit(:uid, :code, :name, :client_id, :company_cost_centre_id, :is_active, :creation_source_id, :eis_sync_date, :additional_company_cost_centre_id)
    end
end
