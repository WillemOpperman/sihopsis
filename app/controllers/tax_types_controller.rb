class TaxTypesController < ApplicationController
  before_action :set_tax_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tax_types = TaxType.all
    respond_with(@tax_types)
  end

  def show
    respond_with(@tax_type)
  end

  def new
    @tax_type = TaxType.new
    respond_with(@tax_type)
  end

  def edit
  end

  def create
    @tax_type = TaxType.new(tax_type_params)
    @tax_type.save
    respond_with(@tax_type)
  end

  def update
    @tax_type.update(tax_type_params)
    respond_with(@tax_type)
  end

  def destroy
    @tax_type.destroy
    respond_with(@tax_type)
  end

  private
    def set_tax_type
      @tax_type = TaxType.find(params[:id])
    end

    def tax_type_params
      params.require(:tax_type).permit(:uid, :code, :name, :creation_source_id, :tax_rate, :is_locked, :is_active, :eis_sync_date)
    end
end
