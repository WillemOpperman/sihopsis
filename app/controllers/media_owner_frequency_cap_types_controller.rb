class MediaOwnerFrequencyCapTypesController < ApplicationController
  before_action :set_media_owner_frequency_cap_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_owner_frequency_cap_types = MediaOwnerFrequencyCapType.all
    respond_with(@media_owner_frequency_cap_types)
  end

  def show
    respond_with(@media_owner_frequency_cap_type)
  end

  def new
    @media_owner_frequency_cap_type = MediaOwnerFrequencyCapType.new
    respond_with(@media_owner_frequency_cap_type)
  end

  def edit
  end

  def create
    @media_owner_frequency_cap_type = MediaOwnerFrequencyCapType.new(media_owner_frequency_cap_type_params)
    @media_owner_frequency_cap_type.save
    respond_with(@media_owner_frequency_cap_type)
  end

  def update
    @media_owner_frequency_cap_type.update(media_owner_frequency_cap_type_params)
    respond_with(@media_owner_frequency_cap_type)
  end

  def destroy
    @media_owner_frequency_cap_type.destroy
    respond_with(@media_owner_frequency_cap_type)
  end

  private
    def set_media_owner_frequency_cap_type
      @media_owner_frequency_cap_type = MediaOwnerFrequencyCapType.find(params[:id])
    end

    def media_owner_frequency_cap_type_params
      params.require(:media_owner_frequency_cap_type).permit(:uid, :code, :media_owner_id, :media_frequency_cap_type_id, :is_active, :eis_sync_date)
    end
end
