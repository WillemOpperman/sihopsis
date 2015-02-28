class MediaSpaceTargetsController < ApplicationController
  before_action :set_media_space_target, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_targets = MediaSpaceTarget.all
    respond_with(@media_space_targets)
  end

  def show
    respond_with(@media_space_target)
  end

  def new
    @media_space_target = MediaSpaceTarget.new
    respond_with(@media_space_target)
  end

  def edit
  end

  def create
    @media_space_target = MediaSpaceTarget.new(media_space_target_params)
    @media_space_target.save
    respond_with(@media_space_target)
  end

  def update
    @media_space_target.update(media_space_target_params)
    respond_with(@media_space_target)
  end

  def destroy
    @media_space_target.destroy
    respond_with(@media_space_target)
  end

  private
    def set_media_space_target
      @media_space_target = MediaSpaceTarget.find(params[:id])
    end

    def media_space_target_params
      params.require(:media_space_target).permit(:uid, :code, :media_space_id, :media_target_id, :is_active, :eis_sync_date)
    end
end
