class MediaDiscountSurchargeTypeClientDealsController < ApplicationController
  before_action :set_media_discount_surcharge_type_client_deal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_discount_surcharge_type_client_deals = MediaDiscountSurchargeTypeClientDeal.all
    respond_with(@media_discount_surcharge_type_client_deals)
  end

  def show
    respond_with(@media_discount_surcharge_type_client_deal)
  end

  def new
    @media_discount_surcharge_type_client_deal = MediaDiscountSurchargeTypeClientDeal.new
    respond_with(@media_discount_surcharge_type_client_deal)
  end

  def edit
  end

  def create
    @media_discount_surcharge_type_client_deal = MediaDiscountSurchargeTypeClientDeal.new(media_discount_surcharge_type_client_deal_params)
    @media_discount_surcharge_type_client_deal.save
    respond_with(@media_discount_surcharge_type_client_deal)
  end

  def update
    @media_discount_surcharge_type_client_deal.update(media_discount_surcharge_type_client_deal_params)
    respond_with(@media_discount_surcharge_type_client_deal)
  end

  def destroy
    @media_discount_surcharge_type_client_deal.destroy
    respond_with(@media_discount_surcharge_type_client_deal)
  end

  private
    def set_media_discount_surcharge_type_client_deal
      @media_discount_surcharge_type_client_deal = MediaDiscountSurchargeTypeClientDeal.find(params[:id])
    end

    def media_discount_surcharge_type_client_deal_params
      params.require(:media_discount_surcharge_type_client_deal).permit(:uid, :code, :name, :media_discount_surcharge_type_id, :client_id, :client_product_id, :is_client_share_calculated_off_rate, :is_client_share_amount_based, :client_share_percentage, :client_share_amount, :eis_sync_date, :is_default, :is_active)
    end
end
