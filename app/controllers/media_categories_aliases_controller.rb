class MediaCategoriesAliasesController < ApplicationController
  before_action :set_media_categories_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_categories_aliases = MediaCategoriesAlias.all
    respond_with(@media_categories_aliases)
  end

  def show
    respond_with(@media_categories_alias)
  end

  def new
    @media_categories_alias = MediaCategoriesAlias.new
    respond_with(@media_categories_alias)
  end

  def edit
  end

  def create
    @media_categories_alias = MediaCategoriesAlias.new(media_categories_alias_params)
    @media_categories_alias.save
    respond_with(@media_categories_alias)
  end

  def update
    @media_categories_alias.update(media_categories_alias_params)
    respond_with(@media_categories_alias)
  end

  def destroy
    @media_categories_alias.destroy
    respond_with(@media_categories_alias)
  end

  private
    def set_media_categories_alias
      @media_categories_alias = MediaCategoriesAlias.find(params[:id])
    end

    def media_categories_alias_params
      params.require(:media_categories_alias).permit(:uid, :code, :name, :media_category_id, :creation_source_id)
    end
end
