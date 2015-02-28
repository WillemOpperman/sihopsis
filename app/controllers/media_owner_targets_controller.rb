class MediaOwnerTargetsController < ApplicationController
  before_action :set_media_owner_target, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_owner_targets = MediaOwnerTarget.all
    respond_with(@media_owner_targets)
  end

  def show
    respond_with(@media_owner_target)
  end

  def new
    @media_owner_target = MediaOwnerTarget.new
    respond_with(@media_owner_target)
  end

  def edit
  end

  def create
    @media_owner_target = MediaOwnerTarget.new(media_owner_target_params)
    @media_owner_target.save
    respond_with(@media_owner_target)
  end

  def update
    @media_owner_target.update(media_owner_target_params)
    respond_with(@media_owner_target)
  end

  def destroy
    @media_owner_target.destroy
    respond_with(@media_owner_target)
  end

  private
    def set_media_owner_target
      @media_owner_target = MediaOwnerTarget.find(params[:id])
    end

    def media_owner_target_params
      params.require(:media_owner_target).permit(:uid, :code, :media_owner_id, :media_target_id, :is_active, :eis_sync_date)
    end
end
