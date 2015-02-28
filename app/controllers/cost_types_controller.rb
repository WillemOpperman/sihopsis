class CostTypesController < ApplicationController
  before_action :set_cost_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cost_types = CostType.all
    respond_with(@cost_types)
  end

  def show
    respond_with(@cost_type)
  end

  def new
    @cost_type = CostType.new
    respond_with(@cost_type)
  end

  def edit
  end

  def create
    @cost_type = CostType.new(cost_type_params)
    @cost_type.save
    respond_with(@cost_type)
  end

  def update
    @cost_type.update(cost_type_params)
    respond_with(@cost_type)
  end

  def destroy
    @cost_type.destroy
    respond_with(@cost_type)
  end

  private
    def set_cost_type
      @cost_type = CostType.find(params[:id])
    end

    def cost_type_params
      params.require(:cost_type).permit(:uid, :code, :name, :is_gross, :is_nett, :eis_sync_date)
    end
end
