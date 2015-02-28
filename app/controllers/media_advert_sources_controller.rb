class MediaAdvertSourcesController < ApplicationController
  before_action :set_media_advert_source, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_advert_sources = MediaAdvertSource.all
    respond_with(@media_advert_sources)
  end

  def show
    respond_with(@media_advert_source)
  end

  def new
    @media_advert_source = MediaAdvertSource.new
    respond_with(@media_advert_source)
  end

  def edit
  end

  def create
    @media_advert_source = MediaAdvertSource.new(media_advert_source_params)
    @media_advert_source.save
    respond_with(@media_advert_source)
  end

  def update
    @media_advert_source.update(media_advert_source_params)
    respond_with(@media_advert_source)
  end

  def destroy
    @media_advert_source.destroy
    respond_with(@media_advert_source)
  end

  private
    def set_media_advert_source
      @media_advert_source = MediaAdvertSource.find(params[:id])
    end

    def media_advert_source_params
      params.require(:media_advert_source).permit(:uid, :code, :name, :company_id, :creation_source_id, :eis_sync_date)
    end
end
