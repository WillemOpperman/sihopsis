class ProductionCostTypesController < ApplicationController
  before_action :set_production_cost_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @production_cost_types = ProductionCostType.all
    respond_with(@production_cost_types)
  end

  def show
    respond_with(@production_cost_type)
  end

  def new
    @production_cost_type = ProductionCostType.new
    respond_with(@production_cost_type)
  end

  def edit
  end

  def create
    @production_cost_type = ProductionCostType.new(production_cost_type_params)
    @production_cost_type.save
    respond_with(@production_cost_type)
  end

  def update
    @production_cost_type.update(production_cost_type_params)
    respond_with(@production_cost_type)
  end

  def destroy
    @production_cost_type.destroy
    respond_with(@production_cost_type)
  end

  private
    def set_production_cost_type
      @production_cost_type = ProductionCostType.find(params[:id])
    end

    def production_cost_type_params
      params.require(:production_cost_type).permit(:uid, :code, :name, :currency_id, :supplier_id, :company_id, :company_division_id, :client_id, :client_product_id, :unit_cost_amount, :production_cost_margin_percentage, :is_active, :creation_source_id, :eis_sync_date)
    end
end
