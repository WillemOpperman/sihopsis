class MediaSpaceFrequencyTypesController < ApplicationController
  before_action :set_media_space_frequency_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_frequency_types = MediaSpaceFrequencyType.all
    respond_with(@media_space_frequency_types)
  end

  def show
    respond_with(@media_space_frequency_type)
  end

  def new
    @media_space_frequency_type = MediaSpaceFrequencyType.new
    respond_with(@media_space_frequency_type)
  end

  def edit
  end

  def create
    @media_space_frequency_type = MediaSpaceFrequencyType.new(media_space_frequency_type_params)
    @media_space_frequency_type.save
    respond_with(@media_space_frequency_type)
  end

  def update
    @media_space_frequency_type.update(media_space_frequency_type_params)
    respond_with(@media_space_frequency_type)
  end

  def destroy
    @media_space_frequency_type.destroy
    respond_with(@media_space_frequency_type)
  end

  private
    def set_media_space_frequency_type
      @media_space_frequency_type = MediaSpaceFrequencyType.find(params[:id])
    end

    def media_space_frequency_type_params
      params.require(:media_space_frequency_type).permit(:uid, :code, :name, :is_secondly, :is_minutely, :is_hourly, :is_daily, :is_weekly, :is_bi_weekly, :is_monthly, :is_bi_monthly, :is_quarterly, :is_annually, :is_bi_annually, :is_custom_days, :custom_days, :eis_sync_date)
    end
end
