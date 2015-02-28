class MediaRegionsController < ApplicationController
  before_action :set_media_region, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_regions = MediaRegion.all
    respond_with(@media_regions)
  end

  def show
    respond_with(@media_region)
  end

  def new
    @media_region = MediaRegion.new
    respond_with(@media_region)
  end

  def edit
  end

  def create
    @media_region = MediaRegion.new(media_region_params)
    @media_region.save
    respond_with(@media_region)
  end

  def update
    @media_region.update(media_region_params)
    respond_with(@media_region)
  end

  def destroy
    @media_region.destroy
    respond_with(@media_region)
  end

  private
    def set_media_region
      @media_region = MediaRegion.find(params[:id])
    end

    def media_region_params
      params.require(:media_region).permit(:uid, :code, :code_external, :name, :eis_sync_date)
    end
end
