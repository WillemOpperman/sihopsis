class MediaSpaceSectionsController < ApplicationController
  before_action :set_media_space_section, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_sections = MediaSpaceSection.all
    respond_with(@media_space_sections)
  end

  def show
    respond_with(@media_space_section)
  end

  def new
    @media_space_section = MediaSpaceSection.new
    respond_with(@media_space_section)
  end

  def edit
  end

  def create
    @media_space_section = MediaSpaceSection.new(media_space_section_params)
    @media_space_section.save
    respond_with(@media_space_section)
  end

  def update
    @media_space_section.update(media_space_section_params)
    respond_with(@media_space_section)
  end

  def destroy
    @media_space_section.destroy
    respond_with(@media_space_section)
  end

  private
    def set_media_space_section
      @media_space_section = MediaSpaceSection.find(params[:id])
    end

    def media_space_section_params
      params.require(:media_space_section).permit(:uid, :code, :name, :media_space_id, :default_material_deadline_days_id, :default_cancellation_days_id, :is_active, :eis_sync_date)
    end
end
