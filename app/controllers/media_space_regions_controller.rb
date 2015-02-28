class MediaSpaceRegionsController < ApplicationController
  before_action :set_media_space_region, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_regions = MediaSpaceRegion.all
    respond_with(@media_space_regions)
  end

  def show
    respond_with(@media_space_region)
  end

  def new
    @media_space_region = MediaSpaceRegion.new
    respond_with(@media_space_region)
  end

  def edit
  end

  def create
    @media_space_region = MediaSpaceRegion.new(media_space_region_params)
    @media_space_region.save
    respond_with(@media_space_region)
  end

  def update
    @media_space_region.update(media_space_region_params)
    respond_with(@media_space_region)
  end

  def destroy
    @media_space_region.destroy
    respond_with(@media_space_region)
  end

  private
    def set_media_space_region
      @media_space_region = MediaSpaceRegion.find(params[:id])
    end

    def media_space_region_params
      params.require(:media_space_region).permit(:uid, :code, :media_space_id, :media_region_id, :eis_sync_date)
    end
end
