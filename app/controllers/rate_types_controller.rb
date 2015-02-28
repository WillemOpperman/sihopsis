class RateTypesController < ApplicationController
  before_action :set_rate_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rate_types = RateType.all
    respond_with(@rate_types)
  end

  def show
    respond_with(@rate_type)
  end

  def new
    @rate_type = RateType.new
    respond_with(@rate_type)
  end

  def edit
  end

  def create
    @rate_type = RateType.new(rate_type_params)
    @rate_type.save
    respond_with(@rate_type)
  end

  def update
    @rate_type.update(rate_type_params)
    respond_with(@rate_type)
  end

  def destroy
    @rate_type.destroy
    respond_with(@rate_type)
  end

  private
    def set_rate_type
      @rate_type = RateType.find(params[:id])
    end

    def rate_type_params
      params.require(:rate_type).permit(:uid, :code, :name, :media_category_id, :is_default, :is_calculated_as_rate_x_size_x_columns, :is_calculated_as_rate_x_size_x_columns_over_quantity_per_unit_rate_x_quantity, :is_calculated_as_rate_over_quantity_per_unit_rate_x_quantity, :is_added_value, :default_quantity_per_unit_rate, :eis_sync_date, :is_active)
    end
end
