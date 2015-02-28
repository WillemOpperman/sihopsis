class SupplierTypesController < ApplicationController
  before_action :set_supplier_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_types = SupplierType.all
    respond_with(@supplier_types)
  end

  def show
    respond_with(@supplier_type)
  end

  def new
    @supplier_type = SupplierType.new
    respond_with(@supplier_type)
  end

  def edit
  end

  def create
    @supplier_type = SupplierType.new(supplier_type_params)
    @supplier_type.save
    respond_with(@supplier_type)
  end

  def update
    @supplier_type.update(supplier_type_params)
    respond_with(@supplier_type)
  end

  def destroy
    @supplier_type.destroy
    respond_with(@supplier_type)
  end

  private
    def set_supplier_type
      @supplier_type = SupplierType.find(params[:id])
    end

    def supplier_type_params
      params.require(:supplier_type).permit(:uid, :code, :name, :is_media, :is_media_production, :eis_sync_date)
    end
end
