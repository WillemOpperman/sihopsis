class CreativeAgencyChaseListStatusesController < ApplicationController
  before_action :set_creative_agency_chase_list_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creative_agency_chase_list_statuses = CreativeAgencyChaseListStatus.all
    respond_with(@creative_agency_chase_list_statuses)
  end

  def show
    respond_with(@creative_agency_chase_list_status)
  end

  def new
    @creative_agency_chase_list_status = CreativeAgencyChaseListStatus.new
    respond_with(@creative_agency_chase_list_status)
  end

  def edit
  end

  def create
    @creative_agency_chase_list_status = CreativeAgencyChaseListStatus.new(creative_agency_chase_list_status_params)
    @creative_agency_chase_list_status.save
    respond_with(@creative_agency_chase_list_status)
  end

  def update
    @creative_agency_chase_list_status.update(creative_agency_chase_list_status_params)
    respond_with(@creative_agency_chase_list_status)
  end

  def destroy
    @creative_agency_chase_list_status.destroy
    respond_with(@creative_agency_chase_list_status)
  end

  private
    def set_creative_agency_chase_list_status
      @creative_agency_chase_list_status = CreativeAgencyChaseListStatus.find(params[:id])
    end

    def creative_agency_chase_list_status_params
      params.require(:creative_agency_chase_list_status).permit(:uid, :code, :name, :is_active, :is_cancelled, :is_revised, :is_default, :eis_sync_date)
    end
end
