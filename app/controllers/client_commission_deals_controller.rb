class ClientCommissionDealsController < ApplicationController
  before_action :set_client_commission_deal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @client_commission_deals = ClientCommissionDeal.all
    respond_with(@client_commission_deals)
  end

  def show
    respond_with(@client_commission_deal)
  end

  def new
    @client_commission_deal = ClientCommissionDeal.new
    respond_with(@client_commission_deal)
  end

  def edit
  end

  def create
    @client_commission_deal = ClientCommissionDeal.new(client_commission_deal_params)
    @client_commission_deal.save
    respond_with(@client_commission_deal)
  end

  def update
    @client_commission_deal.update(client_commission_deal_params)
    respond_with(@client_commission_deal)
  end

  def destroy
    @client_commission_deal.destroy
    respond_with(@client_commission_deal)
  end

  private
    def set_client_commission_deal
      @client_commission_deal = ClientCommissionDeal.find(params[:id])
    end

    def client_commission_deal_params
      params.require(:client_commission_deal).permit(:code, :uid, :company_division_id, :client_id, :client_product_id, :media_category_id, :supplier_id, :media_space_id, :start_date, :expiry_date, :agency_commission_percentage, :client_share_commission_percentage, :members_share_sum_commission_percentage, :remaining_share_revenue_commission_percentage, :is_active, :is_calc_commission_share_after_discount_deal, :media_category_size_id)
    end
end
