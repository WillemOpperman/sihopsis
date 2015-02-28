class MediaTargetAliasesController < ApplicationController
  before_action :set_media_target_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_target_aliases = MediaTargetAlias.all
    respond_with(@media_target_aliases)
  end

  def show
    respond_with(@media_target_alias)
  end

  def new
    @media_target_alias = MediaTargetAlias.new
    respond_with(@media_target_alias)
  end

  def edit
  end

  def create
    @media_target_alias = MediaTargetAlias.new(media_target_alias_params)
    @media_target_alias.save
    respond_with(@media_target_alias)
  end

  def update
    @media_target_alias.update(media_target_alias_params)
    respond_with(@media_target_alias)
  end

  def destroy
    @media_target_alias.destroy
    respond_with(@media_target_alias)
  end

  private
    def set_media_target_alias
      @media_target_alias = MediaTargetAlias.find(params[:id])
    end

    def media_target_alias_params
      params.require(:media_target_alias).permit(:uid, :code, :name, :media_target_id, :creation_source_id)
    end
end
