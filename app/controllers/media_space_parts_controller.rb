class MediaSpacePartsController < ApplicationController
  before_action :set_media_space_part, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_parts = MediaSpacePart.all
    respond_with(@media_space_parts)
  end

  def show
    respond_with(@media_space_part)
  end

  def new
    @media_space_part = MediaSpacePart.new
    respond_with(@media_space_part)
  end

  def edit
  end

  def create
    @media_space_part = MediaSpacePart.new(media_space_part_params)
    @media_space_part.save
    respond_with(@media_space_part)
  end

  def update
    @media_space_part.update(media_space_part_params)
    respond_with(@media_space_part)
  end

  def destroy
    @media_space_part.destroy
    respond_with(@media_space_part)
  end

  private
    def set_media_space_part
      @media_space_part = MediaSpacePart.find(params[:id])
    end

    def media_space_part_params
      params.require(:media_space_part).permit(:uid, :code, :name, :media_space_id, :creation_source_id, :type_id, :media_space_section_id, :media_space_date, :from_time, :to_time, :default_material_deadline_days_id, :default_cancellation_days_id, :eis_sync_date, :media_category_id)
    end
end
