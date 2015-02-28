class RateCardsController < ApplicationController
  before_action :set_rate_card, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rate_cards = RateCard.all
    respond_with(@rate_cards)
  end

  def show
    respond_with(@rate_card)
  end

  def new
    @rate_card = RateCard.new
    respond_with(@rate_card)
  end

  def edit
  end

  def create
    @rate_card = RateCard.new(rate_card_params)
    @rate_card.save
    respond_with(@rate_card)
  end

  def update
    @rate_card.update(rate_card_params)
    respond_with(@rate_card)
  end

  def destroy
    @rate_card.destroy
    respond_with(@rate_card)
  end

  private
    def set_rate_card
      @rate_card = RateCard.find(params[:id])
    end

    def rate_card_params
      params.require(:rate_card).permit(:uid, :code, :specific_company_division_id, :supplier_group_id, :supplier_id, :media_space_id, :client_group_id, :client_id, :client_product_id, :is_active, :start_date, :expiry_date, :supplier_contact_id)
    end
end
