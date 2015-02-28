class MediaTargetTypesController < ApplicationController
  before_action :set_media_target_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_target_types = MediaTargetType.all
    respond_with(@media_target_types)
  end

  def show
    respond_with(@media_target_type)
  end

  def new
    @media_target_type = MediaTargetType.new
    respond_with(@media_target_type)
  end

  def edit
  end

  def create
    @media_target_type = MediaTargetType.new(media_target_type_params)
    @media_target_type.save
    respond_with(@media_target_type)
  end

  def update
    @media_target_type.update(media_target_type_params)
    respond_with(@media_target_type)
  end

  def destroy
    @media_target_type.destroy
    respond_with(@media_target_type)
  end

  private
    def set_media_target_type
      @media_target_type = MediaTargetType.find(params[:id])
    end

    def media_target_type_params
      params.require(:media_target_type).permit(:uid, :code, :name, :media_category_id, :is_active, :eis_sync_date)
    end
end
