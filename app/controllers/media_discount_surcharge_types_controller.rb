class MediaDiscountSurchargeTypesController < ApplicationController
  before_action :set_media_discount_surcharge_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_discount_surcharge_types = MediaDiscountSurchargeType.all
    respond_with(@media_discount_surcharge_types)
  end

  def show
    respond_with(@media_discount_surcharge_type)
  end

  def new
    @media_discount_surcharge_type = MediaDiscountSurchargeType.new
    respond_with(@media_discount_surcharge_type)
  end

  def edit
  end

  def create
    @media_discount_surcharge_type = MediaDiscountSurchargeType.new(media_discount_surcharge_type_params)
    @media_discount_surcharge_type.save
    respond_with(@media_discount_surcharge_type)
  end

  def update
    @media_discount_surcharge_type.update(media_discount_surcharge_type_params)
    respond_with(@media_discount_surcharge_type)
  end

  def destroy
    @media_discount_surcharge_type.destroy
    respond_with(@media_discount_surcharge_type)
  end

  private
    def set_media_discount_surcharge_type
      @media_discount_surcharge_type = MediaDiscountSurchargeType.find(params[:id])
    end

    def media_discount_surcharge_type_params
      params.require(:media_discount_surcharge_type).permit(:uid, :code, :name, :media_category_id, :supplier_id, :media_space_id, :media_space_part_id, :media_category_size_id, :media_category_format_id, :is_calculated_off_rate, :is_amount_based, :is_full_discount, :eis_sync_date, :is_default, :is_active)
    end
end
