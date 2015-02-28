class MediaSpacePartTargetsController < ApplicationController
  before_action :set_media_space_part_target, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_part_targets = MediaSpacePartTarget.all
    respond_with(@media_space_part_targets)
  end

  def show
    respond_with(@media_space_part_target)
  end

  def new
    @media_space_part_target = MediaSpacePartTarget.new
    respond_with(@media_space_part_target)
  end

  def edit
  end

  def create
    @media_space_part_target = MediaSpacePartTarget.new(media_space_part_target_params)
    @media_space_part_target.save
    respond_with(@media_space_part_target)
  end

  def update
    @media_space_part_target.update(media_space_part_target_params)
    respond_with(@media_space_part_target)
  end

  def destroy
    @media_space_part_target.destroy
    respond_with(@media_space_part_target)
  end

  private
    def set_media_space_part_target
      @media_space_part_target = MediaSpacePartTarget.find(params[:id])
    end

    def media_space_part_target_params
      params.require(:media_space_part_target).permit(:uid, :code, :media_space_part_id, :media_target_id, :is_active, :eis_sync_date)
    end
end
