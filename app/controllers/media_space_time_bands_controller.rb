class MediaSpaceTimeBandsController < ApplicationController
  before_action :set_media_space_time_band, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_time_bands = MediaSpaceTimeBand.all
    respond_with(@media_space_time_bands)
  end

  def show
    respond_with(@media_space_time_band)
  end

  def new
    @media_space_time_band = MediaSpaceTimeBand.new
    respond_with(@media_space_time_band)
  end

  def edit
  end

  def create
    @media_space_time_band = MediaSpaceTimeBand.new(media_space_time_band_params)
    @media_space_time_band.save
    respond_with(@media_space_time_band)
  end

  def update
    @media_space_time_band.update(media_space_time_band_params)
    respond_with(@media_space_time_band)
  end

  def destroy
    @media_space_time_band.destroy
    respond_with(@media_space_time_band)
  end

  private
    def set_media_space_time_band
      @media_space_time_band = MediaSpaceTimeBand.find(params[:id])
    end

    def media_space_time_band_params
      params.require(:media_space_time_band).permit(:uid, :code, :media_space_id, :time_band_name, :from_time, :to_time, :is_monday, :is_tuesday, :is_wednesday, :is_thursday, :is_friday, :is_saturday, :is_sunday)
    end
end
