class CreativeAgencyChaseListsController < ApplicationController
  before_action :set_creative_agency_chase_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creative_agency_chase_lists = CreativeAgencyChaseList.all
    respond_with(@creative_agency_chase_lists)
  end

  def show
    respond_with(@creative_agency_chase_list)
  end

  def new
    @creative_agency_chase_list = CreativeAgencyChaseList.new
    respond_with(@creative_agency_chase_list)
  end

  def edit
  end

  def create
    @creative_agency_chase_list = CreativeAgencyChaseList.new(creative_agency_chase_list_params)
    @creative_agency_chase_list.save
    respond_with(@creative_agency_chase_list)
  end

  def update
    @creative_agency_chase_list.update(creative_agency_chase_list_params)
    respond_with(@creative_agency_chase_list)
  end

  def destroy
    @creative_agency_chase_list.destroy
    respond_with(@creative_agency_chase_list)
  end

  private
    def set_creative_agency_chase_list
      @creative_agency_chase_list = CreativeAgencyChaseList.find(params[:id])
    end

    def creative_agency_chase_list_params
      params.require(:creative_agency_chase_list).permit(:uid, :code, :name, :status_id, :material_contact_id, :creative_agency_id, :creative_agency_contact_id, :media_category_id, :issued_date, :notes, :revision_no, :creation_source_id, :communication_status_id, :eis_sync_date)
    end
end
