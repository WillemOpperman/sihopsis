class CompanyCostCentresController < ApplicationController
  before_action :set_company_cost_centre, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @company_cost_centres = CompanyCostCentre.all
    respond_with(@company_cost_centres)
  end

  def show
    respond_with(@company_cost_centre)
  end

  def new
    @company_cost_centre = CompanyCostCentre.new
    respond_with(@company_cost_centre)
  end

  def edit
  end

  def create
    @company_cost_centre = CompanyCostCentre.new(company_cost_centre_params)
    @company_cost_centre.save
    respond_with(@company_cost_centre)
  end

  def update
    @company_cost_centre.update(company_cost_centre_params)
    respond_with(@company_cost_centre)
  end

  def destroy
    @company_cost_centre.destroy
    respond_with(@company_cost_centre)
  end

  private
    def set_company_cost_centre
      @company_cost_centre = CompanyCostCentre.find(params[:id])
    end

    def company_cost_centre_params
      params.require(:company_cost_centre).permit(:uid, :code, :name, :company_id, :is_active, :creation_source_id, :eis_sync_date)
    end
end
