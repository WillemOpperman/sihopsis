class CreativeAgencyChaseListLinesController < ApplicationController
  before_action :set_creative_agency_chase_list_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creative_agency_chase_list_lines = CreativeAgencyChaseListLine.all
    respond_with(@creative_agency_chase_list_lines)
  end

  def show
    respond_with(@creative_agency_chase_list_line)
  end

  def new
    @creative_agency_chase_list_line = CreativeAgencyChaseListLine.new
    respond_with(@creative_agency_chase_list_line)
  end

  def edit
  end

  def create
    @creative_agency_chase_list_line = CreativeAgencyChaseListLine.new(creative_agency_chase_list_line_params)
    @creative_agency_chase_list_line.save
    respond_with(@creative_agency_chase_list_line)
  end

  def update
    @creative_agency_chase_list_line.update(creative_agency_chase_list_line_params)
    respond_with(@creative_agency_chase_list_line)
  end

  def destroy
    @creative_agency_chase_list_line.destroy
    respond_with(@creative_agency_chase_list_line)
  end

  private
    def set_creative_agency_chase_list_line
      @creative_agency_chase_list_line = CreativeAgencyChaseListLine.find(params[:id])
    end

    def creative_agency_chase_list_line_params
      params.require(:creative_agency_chase_list_line).permit(:uid, :code, :name, :creative_agency_chase_list_id, :campaign_schedule_placement_id, :material_contact_id, :material_delivery_method, :material_delivery_address, :routing_address_summary, :material_production_date, :media_space_part_type_id, :revision_no, :is_changed_in_current_revision, :revision_change_details, :eis_sync_date, :notes)
    end
end
