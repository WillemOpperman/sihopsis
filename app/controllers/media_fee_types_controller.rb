class MediaFeeTypesController < ApplicationController
  before_action :set_media_fee_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_fee_types = MediaFeeType.all
    respond_with(@media_fee_types)
  end

  def show
    respond_with(@media_fee_type)
  end

  def new
    @media_fee_type = MediaFeeType.new
    respond_with(@media_fee_type)
  end

  def edit
  end

  def create
    @media_fee_type = MediaFeeType.new(media_fee_type_params)
    @media_fee_type.save
    respond_with(@media_fee_type)
  end

  def update
    @media_fee_type.update(media_fee_type_params)
    respond_with(@media_fee_type)
  end

  def destroy
    @media_fee_type.destroy
    respond_with(@media_fee_type)
  end

  private
    def set_media_fee_type
      @media_fee_type = MediaFeeType.find(params[:id])
    end

    def media_fee_type_params
      params.require(:media_fee_type).permit(:uid, :code, :name, :media_category_id, :supplier_id, :media_space_id, :media_space_part_id, :media_category_size_id, :media_category_format_id, :is_calculated_off_rate, :is_amount_based, :is_default, :is_only_allowed_once_per_placement, :default_fee_amount, :eis_sync_date)
    end
end
