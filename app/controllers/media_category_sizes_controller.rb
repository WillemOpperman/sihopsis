class MediaCategorySizesController < ApplicationController
  before_action :set_media_category_size, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_category_sizes = MediaCategorySize.all
    respond_with(@media_category_sizes)
  end

  def show
    respond_with(@media_category_size)
  end

  def new
    @media_category_size = MediaCategorySize.new
    respond_with(@media_category_size)
  end

  def edit
  end

  def create
    @media_category_size = MediaCategorySize.new(media_category_size_params)
    @media_category_size.save
    respond_with(@media_category_size)
  end

  def update
    @media_category_size.update(media_category_size_params)
    respond_with(@media_category_size)
  end

  def destroy
    @media_category_size.destroy
    respond_with(@media_category_size)
  end

  private
    def set_media_category_size
      @media_category_size = MediaCategorySize.find(params[:id])
    end

    def media_category_size_params
      params.require(:media_category_size).permit(:uid, :code, :name, :media_category_id, :media_space_id, :height_id, :columns_id, :height_unit_of_measure, :columns_unit_of_measure, :is_name_auto_maintained, :is_active, :eis_sync_date)
    end
end
