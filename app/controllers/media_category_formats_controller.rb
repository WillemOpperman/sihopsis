class MediaCategoryFormatsController < ApplicationController
  before_action :set_media_category_format, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_category_formats = MediaCategoryFormat.all
    respond_with(@media_category_formats)
  end

  def show
    respond_with(@media_category_format)
  end

  def new
    @media_category_format = MediaCategoryFormat.new
    respond_with(@media_category_format)
  end

  def edit
  end

  def create
    @media_category_format = MediaCategoryFormat.new(media_category_format_params)
    @media_category_format.save
    respond_with(@media_category_format)
  end

  def update
    @media_category_format.update(media_category_format_params)
    respond_with(@media_category_format)
  end

  def destroy
    @media_category_format.destroy
    respond_with(@media_category_format)
  end

  private
    def set_media_category_format
      @media_category_format = MediaCategoryFormat.find(params[:id])
    end

    def media_category_format_params
      params.require(:media_category_format).permit(:uid, :code, :name, :media_category_id, :media_space_id, :is_active, :eis_sync_date)
    end
end
