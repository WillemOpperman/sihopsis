class MediaSpaceSuppliersController < ApplicationController
  before_action :set_media_space_supplier, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_space_suppliers = MediaSpaceSupplier.all
    respond_with(@media_space_suppliers)
  end

  def show
    respond_with(@media_space_supplier)
  end

  def new
    @media_space_supplier = MediaSpaceSupplier.new
    respond_with(@media_space_supplier)
  end

  def edit
  end

  def create
    @media_space_supplier = MediaSpaceSupplier.new(media_space_supplier_params)
    @media_space_supplier.save
    respond_with(@media_space_supplier)
  end

  def update
    @media_space_supplier.update(media_space_supplier_params)
    respond_with(@media_space_supplier)
  end

  def destroy
    @media_space_supplier.destroy
    respond_with(@media_space_supplier)
  end

  private
    def set_media_space_supplier
      @media_space_supplier = MediaSpaceSupplier.find(params[:id])
    end

    def media_space_supplier_params
      params.require(:media_space_supplier).permit(:uid, :code, :media_space_id, :supplier_id, :cost_type_id, :commission_percentage, :minimum_intermediary_margin_percentage, :eis_sync_date, :is_active)
    end
end
