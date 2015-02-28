class AgencyCommissionTypesController < ApplicationController
  before_action :set_agency_commission_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @agency_commission_types = AgencyCommissionType.all
    respond_with(@agency_commission_types)
  end

  def show
    respond_with(@agency_commission_type)
  end

  def new
    @agency_commission_type = AgencyCommissionType.new
    respond_with(@agency_commission_type)
  end

  def edit
  end

  def create
    @agency_commission_type = AgencyCommissionType.new(agency_commission_type_params)
    @agency_commission_type.save
    respond_with(@agency_commission_type)
  end

  def update
    @agency_commission_type.update(agency_commission_type_params)
    respond_with(@agency_commission_type)
  end

  def destroy
    @agency_commission_type.destroy
    respond_with(@agency_commission_type)
  end

  private
    def set_agency_commission_type
      @agency_commission_type = AgencyCommissionType.find(params[:id])
    end

    def agency_commission_type_params
      params.require(:agency_commission_type).permit(:uid, :code, :name, :media_category_id, :is_calculated_as_nett_marked_up_by_agency_comm_perc, :is_calculated_as_gross_marked_up_by_agency_comm_perc, :is_default, :eis_sync_date)
    end
end
