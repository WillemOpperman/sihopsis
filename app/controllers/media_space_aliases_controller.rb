class MediaSpaceAliasesController < ApplicationController
  before_action :set_media_space_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_aliases = MediaSpaceAlias.all
    respond_with(@media_space_aliases)
  end

  def show
    respond_with(@media_space_alias)
  end

  def new
    @media_space_alias = MediaSpaceAlias.new
    respond_with(@media_space_alias)
  end

  def edit
  end

  def create
    @media_space_alias = MediaSpaceAlias.new(media_space_alias_params)
    @media_space_alias.save
    respond_with(@media_space_alias)
  end

  def update
    @media_space_alias.update(media_space_alias_params)
    respond_with(@media_space_alias)
  end

  def destroy
    @media_space_alias.destroy
    respond_with(@media_space_alias)
  end

  private
    def set_media_space_alias
      @media_space_alias = MediaSpaceAlias.find(params[:id])
    end

    def media_space_alias_params
      params.require(:media_space_alias).permit(:uid, :code, :name, :media_space_id, :media_region_id, :creation_source_id)
    end
end
