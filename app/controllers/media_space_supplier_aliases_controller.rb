class MediaSpaceSupplierAliasesController < ApplicationController
  before_action :set_media_space_supplier_alias, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_supplier_aliases = MediaSpaceSupplierAlias.all
    respond_with(@media_space_supplier_aliases)
  end

  def show
    respond_with(@media_space_supplier_alias)
  end

  def new
    @media_space_supplier_alias = MediaSpaceSupplierAlias.new
    respond_with(@media_space_supplier_alias)
  end

  def edit
  end

  def create
    @media_space_supplier_alias = MediaSpaceSupplierAlias.new(media_space_supplier_alias_params)
    @media_space_supplier_alias.save
    respond_with(@media_space_supplier_alias)
  end

  def update
    @media_space_supplier_alias.update(media_space_supplier_alias_params)
    respond_with(@media_space_supplier_alias)
  end

  def destroy
    @media_space_supplier_alias.destroy
    respond_with(@media_space_supplier_alias)
  end

  private
    def set_media_space_supplier_alias
      @media_space_supplier_alias = MediaSpaceSupplierAlias.find(params[:id])
    end

    def media_space_supplier_alias_params
      params.require(:media_space_supplier_alias).permit(:uid, :code, :name, :media_space_id, :supplier_id)
    end
end
