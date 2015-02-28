class MediaTargetsController < ApplicationController
  before_action :set_media_target, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_targets = MediaTarget.all
    respond_with(@media_targets)
  end

  def show
    respond_with(@media_target)
  end

  def new
    @media_target = MediaTarget.new
    respond_with(@media_target)
  end

  def edit
  end

  def create
    @media_target = MediaTarget.new(media_target_params)
    @media_target.save
    respond_with(@media_target)
  end

  def update
    @media_target.update(media_target_params)
    respond_with(@media_target)
  end

  def destroy
    @media_target.destroy
    respond_with(@media_target)
  end

  private
    def set_media_target
      @media_target = MediaTarget.find(params[:id])
    end

    def media_target_params
      params.require(:media_target).permit(:uid, :code, :name, :type_id, :rate_increase_percentage, :rate_increase_amount, :range_from_amount, :range_to_amount, :is_name_auto_maintained, :is_active, :eis_sync_date)
    end
end
