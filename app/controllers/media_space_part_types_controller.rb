class MediaSpacePartTypesController < ApplicationController
  before_action :set_media_space_part_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_part_types = MediaSpacePartType.all
    respond_with(@media_space_part_types)
  end

  def show
    respond_with(@media_space_part_type)
  end

  def new
    @media_space_part_type = MediaSpacePartType.new
    respond_with(@media_space_part_type)
  end

  def edit
  end

  def create
    @media_space_part_type = MediaSpacePartType.new(media_space_part_type_params)
    @media_space_part_type.save
    respond_with(@media_space_part_type)
  end

  def update
    @media_space_part_type.update(media_space_part_type_params)
    respond_with(@media_space_part_type)
  end

  def destroy
    @media_space_part_type.destroy
    respond_with(@media_space_part_type)
  end

  private
    def set_media_space_part_type
      @media_space_part_type = MediaSpacePartType.find(params[:id])
    end

    def media_space_part_type_params
      params.require(:media_space_part_type).permit(:uid, :code, :name, :media_category_id, :media_space_id, :is_active, :eis_sync_date)
    end
end
