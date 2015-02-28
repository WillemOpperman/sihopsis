class MediaFrequencyCapTypesController < ApplicationController
  before_action :set_media_frequency_cap_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_frequency_cap_types = MediaFrequencyCapType.all
    respond_with(@media_frequency_cap_types)
  end

  def show
    respond_with(@media_frequency_cap_type)
  end

  def new
    @media_frequency_cap_type = MediaFrequencyCapType.new
    respond_with(@media_frequency_cap_type)
  end

  def edit
  end

  def create
    @media_frequency_cap_type = MediaFrequencyCapType.new(media_frequency_cap_type_params)
    @media_frequency_cap_type.save
    respond_with(@media_frequency_cap_type)
  end

  def update
    @media_frequency_cap_type.update(media_frequency_cap_type_params)
    respond_with(@media_frequency_cap_type)
  end

  def destroy
    @media_frequency_cap_type.destroy
    respond_with(@media_frequency_cap_type)
  end

  private
    def set_media_frequency_cap_type
      @media_frequency_cap_type = MediaFrequencyCapType.find(params[:id])
    end

    def media_frequency_cap_type_params
      params.require(:media_frequency_cap_type).permit(:uid, :code, :name, :media_category_id, :is_active, :eis_sync_date)
    end
end
